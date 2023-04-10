// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:response_dashboard_ui/responsive/desktop_scaffold.dart';
import 'package:response_dashboard_ui/responsive/mobile_scaffold.dart';
import 'package:response_dashboard_ui/responsive/responsive_layout.dart';
import 'package:response_dashboard_ui/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
