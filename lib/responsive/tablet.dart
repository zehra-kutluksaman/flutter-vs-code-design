import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popover/popover.dart';
import 'package:vs_design/widget/hover.dart';
import 'package:vs_design/widget/popoveritem.dart';
import '../controller/controller.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> with SingleTickerProviderStateMixin {
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
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          //üst panel
          Container(
            height: 40,
            color: const Color.fromARGB(255, 63, 57, 57),
            child: Row(
              children: [
                const Icon(Icons.filter_vintage_sharp, color: Colors.blue),
                const Spacer(),
                //1.satır
                GestureDetector(
                  child: const Center(
                      child: Text(
                    'File',
                    style: TextStyle(color: Colors.grey),
                  )),
                  onTap: () {
                    showPopover(
                      context: context,
                      bodyBuilder: (context) {
                        return Container(
                          color: const Color.fromARGB(255, 46, 45, 45),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                //1.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'New Text File',
                                    leftText: "Ctrl+N",
                                  ),
                                ),
                                //2.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'New File',
                                    leftText: "Ctrl+windows",
                                  ),
                                ),
                                //3.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'New Window',
                                    leftText: "Ctrl+shift",
                                  ),
                                ),
                                const Divider(
                                    color: Color.fromARGB(255, 120, 117, 117)),
                                //4.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'Open File',
                                    leftText: "Ctrl+O",
                                  ),
                                ),
                                //5.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'Open Folder',
                                    leftText: "Ctrl+K",
                                  ),
                                ),
                                //6.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'Open Workspace',
                                    leftText: "",
                                  ),
                                ),
                                //7.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'Open Recent',
                                    leftText: "",
                                  ),
                                ),
                                const Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //8.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'Add folder to  workspace ',
                                    leftText: "",
                                  ),
                                ),
                                //9.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'Save Workspace to ',
                                    leftText: "",
                                  ),
                                ),
                                //10.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'Duplicate Workspace',
                                    leftText: "",
                                  ),
                                ),
                                const Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //11.sütun
                                HoverMaker(
                                  onTap: () {},
                                  child: const PopoverItem(
                                    rightText: 'Exit',
                                    leftText: "",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      onPop: () => print('Popover was popped!'),
                      direction: PopoverDirection.bottom,
                      width: 200,
                      height: 400,
                      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
                      barrierColor: Colors.transparent,
                      arrowDxOffset: 80.0,
                      arrowDyOffset: 0,
                      transitionDuration: const Duration(milliseconds: 5),
                      shadow: [
                        const BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(255, 151, 175, 195),
                          spreadRadius: 2,
                        ),
                      ],
                    );
                  },
                ),
                const Spacer(),
                //2.satır
                GestureDetector(
                  child: const Center(
                      child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.grey),
                  )),
                  onTap: () {
                    showPopover(
                      context: context,
                      bodyBuilder: (context) {
                        return Container(
                          color: const Color.fromARGB(255, 46, 45, 45),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                //1.sütun
                                PopoverItem(
                                  rightText: 'New Text File',
                                  leftText: "Ctrl+N",
                                ),
                                //2.sütun
                                PopoverItem(
                                  rightText: 'New File',
                                  leftText: "Ctrl+windows",
                                ),
                                //3.sütun
                                PopoverItem(
                                  rightText: 'New Window',
                                  leftText: "Ctrl+shift",
                                ),
                                Divider(
                                    color: Color.fromARGB(255, 120, 117, 117)),
                                //4.sütun
                                PopoverItem(
                                  rightText: 'Open File',
                                  leftText: "Ctrl+O",
                                ),
                                //5.sütun
                                PopoverItem(
                                  rightText: 'Open Folder',
                                  leftText: "Ctrl+K",
                                ),
                                //6.sütun
                                PopoverItem(
                                  rightText: 'Open Workspace',
                                  leftText: "",
                                ),
                                //7.sütun
                                PopoverItem(
                                  rightText: 'Open Recent',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //8.sütun
                                PopoverItem(
                                  rightText: 'Add folder to  workspace ',
                                  leftText: "",
                                ),
                                //9.sütun
                                PopoverItem(
                                  rightText: 'Save Workspace to ',
                                  leftText: "",
                                ),
                                //10.sütun
                                PopoverItem(
                                  rightText: 'Duplicate Workspace',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //11.sütun
                                PopoverItem(
                                  rightText: 'Exit',
                                  leftText: "",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      onPop: () => print('Popover was popped!'),
                      direction: PopoverDirection.bottom,
                      width: 200,
                      height: 400,
                      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
                      barrierColor: Colors.transparent,
                      arrowDxOffset: 80.0,
                      arrowDyOffset: 0,
                      transitionDuration: const Duration(microseconds: 3000),
                      shadow: [
                        const BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(255, 151, 175, 195),
                          spreadRadius: 2,
                        ),
                      ],
                    );
                  },
                ),
                const Spacer(),
                //3.satır
                GestureDetector(
                  child: const Center(
                      child: Text(
                    'Selection',
                    style: TextStyle(color: Colors.grey),
                  )),
                  onTap: () {
                    showPopover(
                      context: context,
                      bodyBuilder: (context) {
                        return Container(
                          color: const Color.fromARGB(255, 46, 45, 45),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                //1.sütun
                                PopoverItem(
                                  rightText: 'New Text File',
                                  leftText: "Ctrl+N",
                                ),
                                //2.sütun
                                PopoverItem(
                                  rightText: 'New File',
                                  leftText: "Ctrl+windows",
                                ),
                                //3.sütun
                                PopoverItem(
                                  rightText: 'New Window',
                                  leftText: "Ctrl+shift",
                                ),
                                Divider(
                                    color: Color.fromARGB(255, 120, 117, 117)),
                                //4.sütun
                                PopoverItem(
                                  rightText: 'Open File',
                                  leftText: "Ctrl+O",
                                ),
                                //5.sütun
                                PopoverItem(
                                  rightText: 'Open Folder',
                                  leftText: "Ctrl+K",
                                ),
                                //6.sütun
                                PopoverItem(
                                  rightText: 'Open Workspace',
                                  leftText: "",
                                ),
                                //7.sütun
                                PopoverItem(
                                  rightText: 'Open Recent',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //8.sütun
                                PopoverItem(
                                  rightText: 'Add folder to  workspace ',
                                  leftText: "",
                                ),
                                //9.sütun
                                PopoverItem(
                                  rightText: 'Save Workspace to ',
                                  leftText: "",
                                ),
                                //10.sütun
                                PopoverItem(
                                  rightText: 'Duplicate Workspace',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //11.sütun
                                PopoverItem(
                                  rightText: 'Exit',
                                  leftText: "",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      onPop: () => print('Popover was popped!'),
                      direction: PopoverDirection.bottom,
                      width: 200,
                      height: 400,
                      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
                      barrierColor: Colors.transparent,
                      arrowDxOffset: 80.0,
                      arrowDyOffset: 0,
                      transitionDuration: const Duration(microseconds: 3000),
                      shadow: [
                        const BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(255, 151, 175, 195),
                          spreadRadius: 2,
                        ),
                      ],
                    );
                  },
                ),
                const Spacer(),
                //4.satır
                GestureDetector(
                  child: const Center(
                      child: Text(
                    'View',
                    style: TextStyle(color: Colors.grey),
                  )),
                  onTap: () {
                    showPopover(
                      context: context,
                      bodyBuilder: (context) {
                        return Container(
                          color: const Color.fromARGB(255, 46, 45, 45),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                //1.sütun
                                PopoverItem(
                                  rightText: 'New Text File',
                                  leftText: "Ctrl+N",
                                ),
                                //2.sütun
                                PopoverItem(
                                  rightText: 'New File',
                                  leftText: "Ctrl+windows",
                                ),
                                //3.sütun
                                PopoverItem(
                                  rightText: 'New Window',
                                  leftText: "Ctrl+shift",
                                ),
                                Divider(
                                    color: Color.fromARGB(255, 120, 117, 117)),
                                //4.sütun
                                PopoverItem(
                                  rightText: 'Open File',
                                  leftText: "Ctrl+O",
                                ),
                                //5.sütun
                                PopoverItem(
                                  rightText: 'Open Folder',
                                  leftText: "Ctrl+K",
                                ),
                                //6.sütun
                                PopoverItem(
                                  rightText: 'Open Workspace',
                                  leftText: "",
                                ),
                                //7.sütun
                                PopoverItem(
                                  rightText: 'Open Recent',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //8.sütun
                                PopoverItem(
                                  rightText: 'Add folder to  workspace ',
                                  leftText: "",
                                ),
                                //9.sütun
                                PopoverItem(
                                  rightText: 'Save Workspace to ',
                                  leftText: "",
                                ),
                                //10.sütun
                                PopoverItem(
                                  rightText: 'Duplicate Workspace',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //11.sütun
                                PopoverItem(
                                  rightText: 'Exit',
                                  leftText: "",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      onPop: () => print('Popover was popped!'),
                      direction: PopoverDirection.bottom,
                      width: 200,
                      height: 400,
                      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
                      barrierColor: Colors.transparent,
                      arrowDxOffset: 80.0,
                      arrowDyOffset: 0,
                      transitionDuration: const Duration(microseconds: 3000),
                      shadow: [
                        const BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(255, 151, 175, 195),
                          spreadRadius: 2,
                        ),
                      ],
                    );
                  },
                ),
                const Spacer(),
                //5.satır
                GestureDetector(
                  child: const Center(
                      child: Text(
                    'Go',
                    style: TextStyle(color: Colors.grey),
                  )),
                  onTap: () {
                    showPopover(
                      context: context,
                      bodyBuilder: (context) {
                        return Container(
                          color: const Color.fromARGB(255, 46, 45, 45),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                //1.sütun
                                PopoverItem(
                                  rightText: 'New Text File',
                                  leftText: "Ctrl+N",
                                ),
                                //2.sütun
                                PopoverItem(
                                  rightText: 'New File',
                                  leftText: "Ctrl+windows",
                                ),
                                //3.sütun
                                PopoverItem(
                                  rightText: 'New Window',
                                  leftText: "Ctrl+shift",
                                ),
                                Divider(
                                    color: Color.fromARGB(255, 120, 117, 117)),
                                //4.sütun
                                PopoverItem(
                                  rightText: 'Open File',
                                  leftText: "Ctrl+O",
                                ),
                                //5.sütun
                                PopoverItem(
                                  rightText: 'Open Folder',
                                  leftText: "Ctrl+K",
                                ),
                                //6.sütun
                                PopoverItem(
                                  rightText: 'Open Workspace',
                                  leftText: "",
                                ),
                                //7.sütun
                                PopoverItem(
                                  rightText: 'Open Recent',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //8.sütun
                                PopoverItem(
                                  rightText: 'Add folder to  workspace ',
                                  leftText: "",
                                ),
                                //9.sütun
                                PopoverItem(
                                  rightText: 'Save Workspace to ',
                                  leftText: "",
                                ),
                                //10.sütun
                                PopoverItem(
                                  rightText: 'Duplicate Workspace',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //11.sütun
                                PopoverItem(
                                  rightText: 'Exit',
                                  leftText: "",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      onPop: () => print('Popover was popped!'),
                      direction: PopoverDirection.bottom,
                      width: 200,
                      height: 400,
                      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
                      barrierColor: Colors.transparent,
                      arrowDxOffset: 80.0,
                      arrowDyOffset: 0,
                      transitionDuration: const Duration(microseconds: 3000),
                      shadow: [
                        const BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(255, 151, 175, 195),
                          spreadRadius: 2,
                        ),
                      ],
                    );
                  },
                ),
                const Spacer(),
                //6.satır
                GestureDetector(
                  child: const Center(
                      child: Text(
                    'Run',
                    style: TextStyle(color: Colors.grey),
                  )),
                  onTap: () {
                    showPopover(
                      context: context,
                      bodyBuilder: (context) {
                        return Container(
                          color: const Color.fromARGB(255, 46, 45, 45),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                //1.sütun
                                PopoverItem(
                                  rightText: 'New Text File',
                                  leftText: "Ctrl+N",
                                ),
                                //2.sütun
                                PopoverItem(
                                  rightText: 'New File',
                                  leftText: "Ctrl+windows",
                                ),
                                //3.sütun
                                PopoverItem(
                                  rightText: 'New Window',
                                  leftText: "Ctrl+shift",
                                ),
                                Divider(
                                    color: Color.fromARGB(255, 120, 117, 117)),
                                //4.sütun
                                PopoverItem(
                                  rightText: 'Open File',
                                  leftText: "Ctrl+O",
                                ),
                                //5.sütun
                                PopoverItem(
                                  rightText: 'Open Folder',
                                  leftText: "Ctrl+K",
                                ),
                                //6.sütun
                                PopoverItem(
                                  rightText: 'Open Workspace',
                                  leftText: "",
                                ),
                                //7.sütun
                                PopoverItem(
                                  rightText: 'Open Recent',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //8.sütun
                                PopoverItem(
                                  rightText: 'Add folder to  workspace ',
                                  leftText: "",
                                ),
                                //9.sütun
                                PopoverItem(
                                  rightText: 'Save Workspace to ',
                                  leftText: "",
                                ),
                                //10.sütun
                                PopoverItem(
                                  rightText: 'Duplicate Workspace',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //11.sütun
                                PopoverItem(
                                  rightText: 'Exit',
                                  leftText: "",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      onPop: () => print('Popover was popped!'),
                      direction: PopoverDirection.bottom,
                      width: 200,
                      height: 400,
                      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
                      barrierColor: Colors.transparent,
                      arrowDxOffset: 80.0,
                      arrowDyOffset: 0,
                      transitionDuration: const Duration(microseconds: 3000),
                      shadow: [
                        const BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(255, 151, 175, 195),
                          spreadRadius: 2,
                        ),
                      ],
                    );
                  },
                ),
                const Spacer(),
                //7.satır
                GestureDetector(
                  child: const Center(
                      child: Text(
                    'Terminal',
                    style: TextStyle(color: Colors.grey),
                  )),
                  onTap: () {
                    showPopover(
                      context: context,
                      bodyBuilder: (context) {
                        return Container(
                          color: const Color.fromARGB(255, 46, 45, 45),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                //1.sütun
                                PopoverItem(
                                  rightText: 'New Text File',
                                  leftText: "Ctrl+N",
                                ),
                                //2.sütun
                                PopoverItem(
                                  rightText: 'New File',
                                  leftText: "Ctrl+windows",
                                ),
                                //3.sütun
                                PopoverItem(
                                  rightText: 'New Window',
                                  leftText: "Ctrl+shift",
                                ),
                                Divider(
                                    color: Color.fromARGB(255, 120, 117, 117)),
                                //4.sütun
                                PopoverItem(
                                  rightText: 'Open File',
                                  leftText: "Ctrl+O",
                                ),
                                //5.sütun
                                PopoverItem(
                                  rightText: 'Open Folder',
                                  leftText: "Ctrl+K",
                                ),
                                //6.sütun
                                PopoverItem(
                                  rightText: 'Open Workspace',
                                  leftText: "",
                                ),
                                //7.sütun
                                PopoverItem(
                                  rightText: 'Open Recent',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //8.sütun
                                PopoverItem(
                                  rightText: 'Add folder to  workspace ',
                                  leftText: "",
                                ),
                                //9.sütun
                                PopoverItem(
                                  rightText: 'Save Workspace to ',
                                  leftText: "",
                                ),
                                //10.sütun
                                PopoverItem(
                                  rightText: 'Duplicate Workspace',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //11.sütun
                                PopoverItem(
                                  rightText: 'Exit',
                                  leftText: "",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      onPop: () => print('Popover was popped!'),
                      direction: PopoverDirection.bottom,
                      width: 200,
                      height: 400,
                      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
                      barrierColor: Colors.transparent,
                      arrowDxOffset: 80.0,
                      arrowDyOffset: 0,
                      transitionDuration: const Duration(microseconds: 3000),
                      shadow: [
                        const BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(255, 151, 175, 195),
                          spreadRadius: 2,
                        ),
                      ],
                    );
                  },
                ),
                const Spacer(),
                //8.satır
                GestureDetector(
                  child: const Center(
                      child: Text(
                    'Help',
                    style: TextStyle(color: Colors.grey),
                  )),
                  onTap: () {
                    showPopover(
                      context: context,
                      bodyBuilder: (context) {
                        return Container(
                          color: const Color.fromARGB(255, 46, 45, 45),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                //1.sütun
                                PopoverItem(
                                  rightText: 'New Text File',
                                  leftText: "Ctrl+N",
                                ),
                                //2.sütun
                                PopoverItem(
                                  rightText: 'New File',
                                  leftText: "Ctrl+windows",
                                ),
                                //3.sütun
                                PopoverItem(
                                  rightText: 'New Window',
                                  leftText: "Ctrl+shift",
                                ),
                                Divider(
                                    color: Color.fromARGB(255, 120, 117, 117)),
                                //4.sütun
                                PopoverItem(
                                  rightText: 'Open File',
                                  leftText: "Ctrl+O",
                                ),
                                //5.sütun
                                PopoverItem(
                                  rightText: 'Open Folder',
                                  leftText: "Ctrl+K",
                                ),
                                //6.sütun
                                PopoverItem(
                                  rightText: 'Open Workspace',
                                  leftText: "",
                                ),
                                //7.sütun
                                PopoverItem(
                                  rightText: 'Open Recent',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //8.sütun
                                PopoverItem(
                                  rightText: 'Add folder to  workspace ',
                                  leftText: "",
                                ),
                                //9.sütun
                                PopoverItem(
                                  rightText: 'Save Workspace to ',
                                  leftText: "",
                                ),
                                //10.sütun
                                PopoverItem(
                                  rightText: 'Duplicate Workspace',
                                  leftText: "",
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 120, 117, 117),
                                ),
                                //11.sütun
                                PopoverItem(
                                  rightText: 'Exit',
                                  leftText: "",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      onPop: () => print('Popover was popped!'),
                      direction: PopoverDirection.bottom,
                      width: 200,
                      height: 400,
                      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
                      barrierColor: Colors.transparent,
                      arrowDxOffset: 80.0,
                      arrowDyOffset: 0,
                      transitionDuration: const Duration(microseconds: 3000),
                      shadow: [
                        const BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(255, 151, 175, 195),
                          spreadRadius: 2,
                        ),
                      ],
                    );
                  },
                ),

                const Spacer(),
                const Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.grey,
                  size: 18,
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                  size: 18,
                ),
                const Spacer(),
                SizedBox(
                  height: 20,
                  width: 400,
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 57, 57, 57),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 108, 106, 106),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 89, 87, 89),
                        ),
                      ),
                    ),
                  ),
                ),

                const Icon(
                  Icons.featured_play_list_outlined,
                  color: Colors.grey,
                  size: 18,
                ),
                const Spacer(),
                const Icon(
                  Icons.featured_play_list_rounded,
                  color: Colors.grey,
                  size: 18,
                ),
                const Spacer(),

                const Text(
                  "--",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                const Spacer(),
                const Icon(
                  Icons.filter_1,
                  color: Colors.grey,
                  size: 18,
                ),
                const Spacer(),
                const Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 18,
                ),
              ],
            ),
          ),
          //orta panel
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 57, 57, 57),
              child: Row(
                children: [
                  Container(
                    height: mediaQuery.size.height * 0.92,
                    width: 60,
                    color: const Color.fromARGB(255, 57, 57, 57),
                    child: Column(
                      children: [
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
                        Spacer(),
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
                  Obx(
                    () => Container(
                      height: mediaQuery.size.height * 0.92,
                      width: 150,
                      color: const Color.fromARGB(255, 67, 61, 61),
                      child: indexController!.getPage(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: mediaQuery.size.height * 0.92,
                      width: mediaQuery.size.width * 0.86,
                      color: const Color.fromARGB(255, 39, 35, 35),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //alt panel
          Container(
            height: mediaQuery.size.height * 0.04,
            width: mediaQuery.size.width * 1,
            color: const Color.fromARGB(255, 26, 135, 225),
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
                Icon(
                  Icons.hexagon_outlined,
                  size: 12,
                  color: Colors.white,
                ),
                SizedBox(width: 3),
                Text(
                  "tabnine starter",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Spacer(),
                Text(
                  "Ln 314, Col 24",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(width: 20),
                Text(
                  "Spaces: 2",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(width: 20),
                Text(
                  "UTF-8",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(width: 20),
                Text(
                  "CRLF",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(width: 20),
                Text(
                  "{}  Dart",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(width: 20),
                Text(
                  "Go Live",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
