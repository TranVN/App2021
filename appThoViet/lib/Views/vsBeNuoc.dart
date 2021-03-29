import 'package:appthoviet/ViewModels/veSinhBeNuoc/bgdvVSBeNuoc.dart';
import 'package:appthoviet/ViewModels/veSinhBeNuoc/gtdvVSBeNuoc.dart';
import 'package:flutter/material.dart';

class VSBeNuoc extends StatefulWidget {
  @override
  _VSBeNuocState createState() => _VSBeNuocState();
}

class _VSBeNuocState extends State<VSBeNuoc>
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Vệ Sinh Bể Nước Ngầm'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
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
                      text: 'Giới Thiệu',
                    ),
                    Tab(
                      text: 'Bảng Giá',
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [GioiThieuVSBeNuoc(), BGVSBeNuoc()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
