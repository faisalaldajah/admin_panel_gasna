import 'package:admin_panel_gasna/Model/AmountData.dart';
import 'package:admin_panel_gasna/Model/UserData.dart';
import 'package:admin_panel_gasna/widgets/DataViewer.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  static const String id = 'report';
  final List<DriverData> driverData;
  final List<UserData> userData;
  ReportPage({this.driverData, this.userData});
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
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
