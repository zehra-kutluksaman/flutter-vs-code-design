import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vs_design/controller/controller.dart';

class LeftPanelIcon extends StatefulWidget {
  const LeftPanelIcon({super.key});

  @override
  State<LeftPanelIcon> createState() => _LeftPanelIconState();
}

class _LeftPanelIconState extends State<LeftPanelIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.put(IndexController(), tag: "index");
    super.initState();
  }

  final List hover = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 57, 57),
      body: Container(
        height: 693,
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
                onHover: (value) {
                  setState(() {
                    value ? hover[0] = true : hover[0] = false;
                  });
                },
                onPressed: () {
                  setState(() {
                    indexController!.leftPageIndex.value = 0;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(Icons.file_copy_outlined,
                      size: 25,
                      color: indexController!.leftPageIndex == 0
                          ? Colors.white
                          : Colors.grey),
                ),
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
                  setState(() {
                    indexController!.leftPageIndex.value = 1;
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
                  setState(() {
                    indexController!.leftPageIndex.value = 2;
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
                  setState(() {
                    indexController!.leftPageIndex.value = 3;
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
                  setState(() {
                    indexController!.leftPageIndex.value = 4;
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
                  setState(() {
                    indexController!.leftPageIndex.value = 5;
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
                  setState(() {
                    indexController!.leftPageIndex.value = 6;
                  });
                },
                child: Icon(Icons.hexagon_outlined,
                    size: 30,
                    color: indexController!.leftPageIndex == 6
                        ? Colors.white
                        : Colors.grey),
              ),
            ),
            const SizedBox(height: 15),
            //8.icon
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                      width: 2,
                      color: indexController?.leftPageIndex == 7
                          ? Colors.white
                          : Colors.transparent),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    indexController!.leftPageIndex.value = 7;
                  });
                },
                child: Icon(Icons.flaky_outlined,
                    size: 30,
                    color: indexController!.leftPageIndex == 7
                        ? Colors.white
                        : Colors.grey),
              ),
            ),
            const SizedBox(height: 15),
            //9.icon
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                      width: 2,
                      color: indexController?.leftPageIndex == 8
                          ? Colors.white
                          : Colors.transparent),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    indexController!.leftPageIndex.value = 8;
                  });
                },
                child: Icon(Icons.travel_explore_sharp,
                    size: 30,
                    color: indexController!.leftPageIndex == 8
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
                  setState(() {
                    indexController!.leftPageIndex.value = 9;
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
                  setState(() {
                    indexController!.leftPageIndex.value = 10;
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
    );
  }
}
