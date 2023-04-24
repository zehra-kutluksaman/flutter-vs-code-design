import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vs_design/screen/drawer1.dart';
import 'package:vs_design/screen/drawer2.dart';
import 'package:vs_design/screen/drawer3.dart';
import 'package:vs_design/screen/drawer4.dart';
import 'package:vs_design/screen/drawer5.dart';
import 'package:vs_design/screen/drawer6.dart';
import 'package:vs_design/screen/drawer7.dart';
import 'package:vs_design/screen/drawer8.dart';
import 'package:vs_design/screen/drawer9.dart';
import 'package:vs_design/screen/page1.dart';
import 'package:vs_design/screen/page10.dart';
import 'package:vs_design/screen/page2.dart';
import 'package:vs_design/screen/page3.dart';
import 'package:vs_design/screen/page4.dart';
import 'package:vs_design/screen/page5.dart';
import 'package:vs_design/screen/page6.dart';
import 'package:vs_design/screen/page7.dart';
import 'package:vs_design/screen/page8.dart';
import 'package:vs_design/screen/page9.dart';

class IndexController extends GetxController {
  RxInt leftPageIndex = 0.obs;

  List<Widget> leftPages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
    const Page6(),
    const Page7(),
    const Page8(),
    const Page9(),
    const Page10(),
  ];

  RxInt drawerIndex = 0.obs;
  List<Widget> drawerPages = [
    const Drawer1(),
    const Drawer2(),
    const Drawer3(),
    const Drawer4(),
    const Drawer5(),
    const Drawer6(),
    const Drawer7(),
    const Drawer8(),
    const Drawer9(),
  ];

  Widget getDrawer() {
    return drawerPages[drawerIndex.value];
  }

  Widget getPage() {
    return leftPages[leftPageIndex.value];
  }
}
