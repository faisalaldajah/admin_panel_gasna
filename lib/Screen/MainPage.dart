import 'package:admin_panel_gasna/Widget/DataViewer.dart';
import 'package:admin_panel_gasna/brand_colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BrandColors.colorBackground,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: BrandColors.colorBackground,
      body: Center(
        child: ListView(
          children: [
            DataViewer(
              icon: Icon(Icons.person),
              title: 'إجمالي المستخدمين',
              total: 20,
            ),
            DataViewer(
              icon: Icon(Icons.car_repair),
              title: 'إجمالي السواقين',
              total: 20,
            ),
            DataViewer(
              icon: Icon(Icons.business),
              title: 'إجمالي الوكالات',
              total: 20,
            ),
          ],
        ),
      ),
    );
  }
}
