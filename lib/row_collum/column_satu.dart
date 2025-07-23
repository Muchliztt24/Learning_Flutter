// ignore_for_file: prefer_const_constructors

import 'package:belajar/main_layout.dart';
import 'package:flutter/material.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Column',
      // ...existing code...
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Widget Text 1'),
          Text('Widget Text 2'),
          Text('Widget Text 3'),
          Text('Widget Text 4'),
          Text('Widget Text 5'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Widget Text 1'),
              Text('Widget Text 2'),
              Text('Widget Text 3'),
              Text('Widget Text 4'),
              Text('Widget Text 5'),
            ],
          ),
        ],
      ),
    );
  }
}
