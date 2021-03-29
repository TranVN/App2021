import '../ViewModels/mayNuocNongNLMT.dart';
import '../ViewModels/pinMatTroi.dart';

import 'package:flutter/material.dart';

class TabBarNLMT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarNLMTWidget(),
    );
  }
}

class TabBarNLMTWidget extends StatefulWidget {
  static String routeName = 'views/thoNLMT';
  @override
  _TabBarNLMTWidgetState createState() => _TabBarNLMTWidgetState();
}

class _TabBarNLMTWidgetState extends State<TabBarNLMTWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeWidth = size.width/100;
    double sizeHeight = size.height/100;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Năng Lượng Mặt Trời'),
          centerTitle: true,
        ),
        body: Padding(
          padding:  EdgeInsets.only(left: sizeWidth*2, right: sizeWidth*2, top: sizeHeight*1),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                    color: Colors.green,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Text( 'Giới Thiệu',style: TextStyle(fontSize: sizeWidth*4),),
                    ),
                    Tab(
                      child: Text( 'Bảng Giá',style: TextStyle(fontSize: sizeWidth*4),),
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [MayNuocNongNLMT(), PinMatTroi()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
