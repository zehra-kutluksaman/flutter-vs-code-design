import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vs_design/controller/controller.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.put(IndexController(), tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      drawer: indexController!.getDrawer(),
      body: Builder(
        builder: (context) => Column(
          children: [
            //üst panel
            Container(
              color: const Color.fromARGB(255, 63, 57, 57),
              child: Row(
                children: const [
                  Icon(Icons.filter_vintage_sharp, color: Colors.blue),
                  SizedBox(width: 15),
                  //1.satır
                  Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 40),
                  Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.grey,
                    size: 18,
                  ),
                  Spacer(),
                  Icon(
                    Icons.featured_play_list_outlined,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.featured_play_list_rounded,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.featured_video,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.featured_video_outlined,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "--",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.filter_1,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: 18,
                  ),
                ],
              ),
            ),
            //orta panel
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: mediaQuery.size.height * 0.91,
                    width: 60,
                    color: const Color.fromARGB(255, 57, 57, 57),
                    child: Column(
                      children: [
                        //1.icon
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 2,
                                  color: indexController?.leftPageIndex == 0
                                      ? Colors.white
                                      : Colors.transparent),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                              setState(() {
                                indexController!.leftPageIndex.value = 0;
                                indexController!.drawerIndex.value = 0;
                              });
                            },
                            child: Icon(Icons.file_copy_outlined,
                                size: 25,
                                color: indexController!.leftPageIndex == 0
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 15),
                        //2.icon
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 2,
                                  color: indexController?.leftPageIndex == 1
                                      ? Colors.white
                                      : Colors.transparent),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                              setState(() {
                                indexController!.leftPageIndex.value = 1;
                                indexController!.drawerIndex.value = 1;
                              });
                            },
                            child: Icon(Icons.search,
                                size: 30,
                                color: indexController!.leftPageIndex == 1
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 15),
                        //3.icon
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 2,
                                  color: indexController?.leftPageIndex == 2
                                      ? Colors.white
                                      : Colors.transparent),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                              setState(() {
                                indexController!.leftPageIndex.value = 2;
                                indexController!.drawerIndex.value = 2;
                              });
                            },
                            child: Icon(Icons.network_ping_sharp,
                                size: 30,
                                color: indexController!.leftPageIndex == 2
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 15),
                        //4.icon
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 2,
                                  color: indexController?.leftPageIndex == 3
                                      ? Colors.white
                                      : Colors.transparent),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                              setState(() {
                                indexController!.leftPageIndex.value = 3;
                                indexController!.drawerIndex.value = 3;
                              });
                            },
                            child: Icon(Icons.play_arrow_outlined,
                                size: 30,
                                color: indexController!.leftPageIndex == 3
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 15),
                        //5.icon
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 2,
                                  color: indexController?.leftPageIndex == 4
                                      ? Colors.white
                                      : Colors.transparent),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                              setState(() {
                                indexController!.leftPageIndex.value = 4;
                                indexController!.drawerIndex.value = 4;
                              });
                            },
                            child: Icon(Icons.ads_click,
                                size: 30,
                                color: indexController!.leftPageIndex == 4
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 15),
                        //6.icon
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 2,
                                  color: indexController?.leftPageIndex == 5
                                      ? Colors.white
                                      : Colors.transparent),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                              setState(() {
                                indexController!.leftPageIndex.value = 5;
                                indexController!.drawerIndex.value = 5;
                              });
                            },
                            child: Icon(Icons.science_outlined,
                                size: 30,
                                color: indexController!.leftPageIndex == 5
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 15),
                        //7.icon
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 2,
                                  color: indexController?.leftPageIndex == 6
                                      ? Colors.white
                                      : Colors.transparent),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                              setState(() {
                                indexController!.leftPageIndex.value = 6;
                                indexController!.drawerIndex.value = 6;
                              });
                            },
                            child: Icon(Icons.hexagon_outlined,
                                size: 30,
                                color: indexController!.leftPageIndex == 6
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                        const Spacer(),
                        //10.icon
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 2,
                                  color: indexController?.leftPageIndex == 9
                                      ? Colors.white
                                      : Colors.transparent),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                              setState(() {
                                indexController!.leftPageIndex.value = 7;
                                indexController!.drawerIndex.value = 7;
                              });
                            },
                            child: Icon(Icons.person_pin,
                                size: 30,
                                color: indexController!.leftPageIndex == 9
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 15),
                        //11.icon
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 2,
                                  color: indexController?.leftPageIndex == 10
                                      ? Colors.white
                                      : Colors.transparent),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                              setState(() {
                                indexController!.leftPageIndex.value = 8;
                                indexController!.drawerIndex.value = 8;
                              });
                            },
                            child: Icon(Icons.settings,
                                size: 30,
                                color: indexController!.leftPageIndex == 10
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: mediaQuery.size.height * 0.91,
                      width: mediaQuery.size.width * 0.85,
                      color: const Color.fromARGB(255, 39, 35, 35),
                    ),
                  ),
                ],
              ),
            ),
            //alt panel
            Container(
              color: const Color.fromARGB(255, 26, 135, 225),
              height: mediaQuery.size.height * 0.05,
              width: mediaQuery.size.width * 1,
              child: Row(
                children: const [
                  Icon(
                    Icons.timelapse_rounded,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(width: 3),
                  Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.terrain_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(width: 3),
                  Text(
                    "0",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.expand_circle_down_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(width: 3),
                  Text(
                    "14",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.play_circle,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Debug my code + packages ",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "tabnine starter",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Spacer(),
                  SizedBox(width: 20),
                  Text(
                    "{}  Dart",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Spacer(),
                  Text(
                    "Go Live",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
