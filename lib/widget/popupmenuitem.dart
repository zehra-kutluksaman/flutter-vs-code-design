import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:vs_design/widget/hover.dart';

import 'package:vs_design/widget/popoveritem.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key});

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 57, 57),
      body: Container(
        height: 40,
        width: 1700,
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
                  arrowHeight: 8,
                  arrowWidth: 8,
                  backgroundColor: const Color.fromARGB(255, 46, 45, 45),
                  barrierColor: Colors.transparent,
                  arrowDxOffset: 50,
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
              height: 30,
              width: 650,
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
            const Spacer(),
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
            const Icon(
              Icons.featured_video,
              color: Colors.grey,
              size: 18,
            ),
            const Spacer(),
            const Icon(
              Icons.featured_video_outlined,
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
    );
  }
}
