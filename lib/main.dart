import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vs_design/responsive/desktop.dart';
import 'package:vs_design/responsive/mobile.dart';
import 'package:vs_design/responsive/responsive.dart';
import 'package:vs_design/responsive/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Responsive(
        mobile: Mobile(),
        tablet: Tablet(),
        desktop: Desktop(),
      ),
    );
  }
}
