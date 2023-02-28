import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: HomePage()),
    );
  }
}

// import 'package:flutter/material.dart';

// import 'views/page1.dart';
// import 'views/page2.dart';
// import 'views/page3.dart';
// import 'views/page4.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Bottom NavBar Demo',
//       theme: ThemeData(
//         primaryColor: const Color(0xff2F8D46),
//         splashColor: Colors.transparent,
//         highlightColor: Colors.transparent,
//         hoverColor: Colors.transparent,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int pageIndex = 0;

//   final pages = [
//     Page1(),
//     Page2(),
//     Page3(),
//     Page4(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffC4DFCB),
//       appBar: AppBar(
//         leading: Icon(
//           Icons.menu,
//           color: Theme.of(context).primaryColor,
//         ),
//         title: Text(
//           "Geeks For Geeks",
//           style: TextStyle(
//             color: Theme.of(context).primaryColor,
//             fontSize: 25,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//       ),
//       extendBody: true,
//       body: pages[pageIndex],
//       bottomNavigationBar: buildMyNavBar(context),
//     );
//   }

//   Container buildMyNavBar(BuildContext context) {
//     return Container(
//       child: Padding(
//         padding: EdgeInsets.only(bottom: 20),
//         child: Stack(
//           alignment: Alignment.bottomCenter,
//           children: [
//             Container(
//               height: 60,
//               width: 450,
//               decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.all(Radius.circular(30))),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   IconButton(
//                     enableFeedback: false,
//                     onPressed: () {
//                       setState(() {
//                         pageIndex = 0;
//                       });
//                     },
//                     icon: pageIndex == 0
//                         ? const Icon(
//                             Icons.home_filled,
//                             color: Colors.white,
//                             size: 25,
//                           )
//                         : const Icon(
//                             Icons.home_outlined,
//                             color: Colors.white,
//                             size: 25,
//                           ),
//                   ),
//                   IconButton(
//                     enableFeedback: false,
//                     onPressed: () {
//                       setState(() {
//                         pageIndex = 1;
//                       });
//                     },
//                     icon: pageIndex == 1
//                         ? const Icon(
//                             Icons.pin_drop,
//                             color: Colors.white,
//                             size: 25,
//                           )
//                         : const Icon(
//                             Icons.pin_drop_outlined,
//                             color: Colors.white,
//                             size: 25,
//                           ),
//                   ),
//                   SizedBox(width: 6),
//                   IconButton(
//                     enableFeedback: false,
//                     onPressed: () {
//                       setState(() {
//                         pageIndex = 2;
//                       });
//                     },
//                     icon: pageIndex == 2
//                         ? const Icon(
//                             Icons.play_arrow,
//                             color: Colors.white,
//                             size: 25,
//                           )
//                         : const Icon(
//                             Icons.play_arrow_outlined,
//                             color: Colors.white,
//                             size: 25,
//                           ),
//                   ),
//                   IconButton(
//                     enableFeedback: false,
//                     onPressed: () {
//                       setState(() {
//                         pageIndex = 3;
//                       });
//                     },
//                     icon: pageIndex == 3
//                         ? const Icon(
//                             Icons.person,
//                             color: Colors.white,
//                             size: 25,
//                           )
//                         : const Icon(
//                             Icons.person_outline,
//                             color: Colors.white,
//                             size: 25,
//                           ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(bottom: 20),
//               child: FloatingActionButton(
//                 onPressed: () {},
//                 child: Icon(Icons.add),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Page1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.amber,
//       child: Center(
//         child: Text(
//           "Page Number 1",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 2",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 3",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 4",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
