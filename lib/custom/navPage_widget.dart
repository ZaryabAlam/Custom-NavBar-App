import 'package:flutter/material.dart';

Widget navpagemethod(String name, IconData icon, Color color) {
  return Center(
    child: Column(
      children: [
        for (int x = 1; x <= 50; x++) ...{
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15)),
            height: 50,
            width: 50,
            child: Icon(
              icon,
              color: color,
              size: 35,
            ),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 20)
        }
      ],
    ),
  );
}
