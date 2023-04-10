// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:response_dashboard_ui/constants.dart';
import 'package:response_dashboard_ui/util/my_box.dart';
import 'package:response_dashboard_ui/util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(children: [
        myDrawer,
        Expanded(
          flex: 2,
          child: Column(
            children: [
              // 4 box on the top
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, index) {
                      return const MyBox();
                    },
                  ),
                ),
              ),
              // tiles below it
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) {
                  return MyTile();
                },
                itemCount: 5,
              ))
            ],
          ),
        ),
        Expanded(
            child: Container(
          child: Expanded(
              child: Container(
            color: Colors.pink,
          )),
        )),
      ]),
    );
  }
}
