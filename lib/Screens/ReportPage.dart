import 'package:admin_panel_gasna/Model/AmountData.dart';
import 'package:admin_panel_gasna/Model/UserData.dart';
import 'package:admin_panel_gasna/widgets/AdminDataViewer.dart';
import 'package:flutter/material.dart';

class AdminReportPage extends StatefulWidget {
  static const String id = 'report';
  final List<AdminDriverData> driverData;
  final List<AdminUserData> userData;
  AdminReportPage({this.driverData, this.userData});
  @override
  _AdminReportPageState createState() => _AdminReportPageState();
}

class _AdminReportPageState extends State<AdminReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            DataViewer(
              icon: Icon(Icons.person),
              title: 'إجمالي المستخدمين',
              total: widget.userData.length,
            ),
            DataViewer(
              icon: Icon(Icons.car_repair),
              title: 'إجمالي السواقين',
              total: widget.driverData.length,
            ),
            /*DataViewer(
              icon: Icon(Icons.business),
              title: 'إجمالي الوكالات',
              total: 20,
            ),*/
          ],
        ),
      ),
    );
  }
}
