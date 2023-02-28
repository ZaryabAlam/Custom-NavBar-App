import 'package:flutter/material.dart';
import 'package:navbar2/views/page1.dart';
import 'package:navbar2/views/page2.dart';
import 'package:navbar2/views/page3.dart';
import 'package:navbar2/views/page4.dart';
import 'package:navbar2/views/page5.dart';

// ignore: camel_case_types
class customNavBar extends StatefulWidget {
  customNavBar(BuildContext context);

  @override
  State<customNavBar> createState() => _customNavBarState();
}

// ignore: camel_case_types
class _customNavBarState extends State<customNavBar> {
  int pageIndex = 0;

  final pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 60,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    icon: pageIndex == 0
                        ? const Icon(
                            Icons.home_filled,
                            color: Colors.white,
                            size: 25,
                          )
                        : const Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    icon: pageIndex == 1
                        ? const Icon(
                            Icons.pin_drop,
                            color: Colors.white,
                            size: 25,
                          )
                        : const Icon(
                            Icons.pin_drop_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                  ),
                  SizedBox(width: 6),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: pageIndex == 2
                        ? const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 25,
                          )
                        : const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    icon: pageIndex == 3
                        ? const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 25,
                          )
                        : const Icon(
                            Icons.person_outline,
                            color: Colors.white,
                            size: 25,
                          ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
