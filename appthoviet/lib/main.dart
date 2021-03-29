import 'package:appthoviet/ViewModels/ActionCard.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:appthoviet/Views/home.dart';
import 'package:flutter/material.dart';
import 'Views/datLich.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:appthoviet/Views/login/dangKy.dart';

// import 'package:hawk_fab_menu/hawk_fab_menu.dart';
// import 'package:flutter_speed_dial_material_design/flutter_speed_dial_material_design.dart';

void main() => runApp(MyApp());

/// This is the main application widget.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CTY TNHH Dịch Vụ Kỹ Thuật Thợ Việt',
      home: MainScreen(),
      theme: ThemeData(
        primaryColor: Colors.green[600],
        scaffoldBackgroundColor: Colors.green[50],
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 15.0,
            fontFamily: 'arial',
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width;
    double sizeHeight = size.height;
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: new Scaffold(
          body: Builder(
            builder: (BuildContext context) {
              return OfflineBuilder(
                connectivityBuilder: (
                  BuildContext context,
                  ConnectivityResult connectivity,
                  Widget child,
                ) {
                  final bool connected =
                      connectivity != ConnectivityResult.none;
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      child,
                      Positioned(
                          left: 0.0,
                          right: 0.0,
                          height: 950,
                          top: 30,
                          child: AnimatedContainer(
                            duration: const Duration(microseconds: 300),
                            color: connected
                                ? null
                                : Color.fromRGBO(255, 255, 255, 1),
                            child: connected
                                ? null
                                : Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 120),
                                        child: Text(
                                          'Bạn chưa có kết nối internet vui lòng bật kết nối dữ liệu hoặc wifi....',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.red[700],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                        height: 30.0,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 4,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  Colors.blue),
                                        ),
                                      ),
                                      ActionCallOnly(),
                                    ],
                                  ),
                          ))
                    ],
                  );
                },
                child: Center(
                  child: Callmain(),
                ),
              );
            },
          ),
        ));
  }

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
                title: new Text('Thoát ứng dụng?'),
                actions: <Widget>[
                  RaisedButton(
                    color: Colors.green,
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text("Không"),
                  ),
                  SizedBox(height: 16),
                  RaisedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text("Có"),
                  ),
                ]));
  }
}

class Callmain extends StatefulWidget {
  @override
  _CallmainState createState() => _CallmainState();
}

class _CallmainState extends State<Callmain> {
  Future<void> _launched;

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: HomePage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              launch('tel:0903532938');
            });
          },
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  Widget _buildBottomBar() {
    return BottomAppBar(
      color: Colors.green[600],
      shape: CircularNotchedRectangle(),
      notchMargin: 4.0,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              OutlineButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70)),
                borderSide: BorderSide(color: Colors.white, width: 2),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DatLich(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.today,
                  size: 18,
                  color: Colors.white,
                ),
                label: Text(
                  "Đặt lịch ",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
