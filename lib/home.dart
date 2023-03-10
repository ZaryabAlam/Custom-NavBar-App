import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:navbar2/views/page2.dart';
import 'package:navbar2/views/page3.dart';
import 'package:navbar2/views/page4.dart';
import 'package:navbar2/views/page5.dart';
import 'views/page1.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _hideButtonController;
  var _isVisible;
  int pageIndex = 0;
  final pages = [Page1(), Page2(), Page3(), Page4(), Page5()];

  @override
  initState() {
    super.initState();
    _isVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isVisible)
          setState(() {
            _isVisible = false;
            print("**** $_isVisible up");
          });
      }
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_isVisible)
          setState(() {
            _isVisible = true;
            print("**** $_isVisible down");
          });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Custom NavBar App"),
      ),
      body: SingleChildScrollView(
          controller: _hideButtonController, child: pages[pageIndex]),
      extendBody: true,
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: _isVisible ? 100.0 : 20.0,
        child: _isVisible
            ? customNavBar2(context)
            : Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
              ),
      ),
    );
  }

  Container customNavBar2(BuildContext context) {
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
              padding: EdgeInsets.only(bottom: 25),
              child: Container(
                height: 60,
                width: 60,
                decoration:
                    BoxDecoration(color: Colors.purple, shape: BoxShape.circle),
                child: IconButton(
                  color: Colors.purple,
                  onPressed: () {
                    setState(() {
                      pageIndex = 4;
                    });
                  },
                  icon: pageIndex == 4
                      ? const Icon(
                          Icons.add_circle,
                          color: Colors.white,
                          size: 25,
                        )
                      : const Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                          size: 25,
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
