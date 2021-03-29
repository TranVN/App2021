import 'package:appthoviet/ViewModels/DienLanh/MayTamNong/bgdvMayTamNong.dart';
import 'package:appthoviet/ViewModels/DienLanh/MayTamNong/gtdvMayTamNong.dart';
import 'package:flutter/material.dart';

class MayTamNong extends StatefulWidget {
  @override
  _MayTamNongState createState() => _MayTamNongState();
}

class _MayTamNongState extends State<MayTamNong>
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Máy Tắm Nóng'),
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
                children: [GTTamNong(), BGTamNong()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
