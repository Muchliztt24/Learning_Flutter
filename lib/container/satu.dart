// ignore_for_file: prefer_const_constructors

import 'package:belajar/main_layout.dart';
import 'package:flutter/material.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container 1',
      body: Container(
        width: 200,
        height: 100,
        margin: EdgeInsets.all(10),
        color: Colors.cyan,
        child: Center(
          child: Text("Hello Flutter"),
        ),
      ),
    );
  }
}
