// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:belajar/container/tiga.dart';
import 'package:flutter/material.dart';
import 'package:belajar/main_layout.dart';
import 'package:belajar/container/satu.dart';
import 'package:belajar/container/dua.dart';
import 'package:belajar/container/tiga.dart';


class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container 2',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Colors.lightBlue, Colors.black, Colors.lightBlue],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          boxShadow: [
            BoxShadow(color: Color.fromARGB(255, 30, 182, 247), spreadRadius: 5)
          ],
        ),
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContainerTiga()));
                },
                child: Text("Pindah Ke Container 3"))),
      ),
    );
  }
}
