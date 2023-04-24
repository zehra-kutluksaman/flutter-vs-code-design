import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vs_design/controller/controller.dart';
import 'package:vs_design/widget/bottombar.dart';
import 'package:vs_design/widget/leftpanelicon.dart';
import 'package:vs_design/widget/popupmenuitem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.put(IndexController(), tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 61, 61),
      body: Column(
        children: [
          //üst bar container
          Container(
            height: _mediaQuery.size.height * 0.05,
            width: _mediaQuery.size.width * 1,
            color: const Color.fromARGB(255, 63, 57, 57),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: PopupMenu(),
            ),
          ),
          //orta bar container
          Row(
            children: [
              //sol container
              Container(
                height: _mediaQuery.size.height * 0.92,
                width: 60,
                color: const Color.fromARGB(255, 57, 57, 57),
                child: const Padding(
                    padding: EdgeInsets.all(8.0), child: LeftPanelIcon()),
              ),
              //orta container
              Obx(
                () => Container(
                  height: _mediaQuery.size.height * 0.92,
                  width: 150,
                  color: const Color.fromARGB(255, 67, 61, 61),
                  child: indexController!.getPage(),
                ),
              ),
              //sağ container
              Expanded(
                child: Container(
                  height: _mediaQuery.size.height * 0.92,
                  width: _mediaQuery.size.width * 0.86,
                  color: const Color.fromARGB(255, 39, 35, 35),
                ),
              ),
            ],
          ),
          //alt mavi bar container
          Expanded(
            child: Container(
              height: _mediaQuery.size.height * 0.03,
              width: _mediaQuery.size.width * 1,
              color: const Color.fromARGB(255, 26, 135, 225),
              child: const Padding(
                  padding: EdgeInsets.all(3.0), child: BottomBar()),
            ),
          ),
        ],
      ),
    );
  }
}
