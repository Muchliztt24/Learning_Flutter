import 'package:belajar/main_layout.dart';
import 'package:flutter/material.dart';


class ListviewSatu extends StatelessWidget {
  const ListviewSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                color: Colors.amberAccent,
                height: 200,
                width: 200,
                margin: EdgeInsets.all(10),
                child: FlutterLogo(),
              ),
              Container(
                color: Colors.amberAccent,
                height: 200,
                width: 200,
                margin: EdgeInsets.all(10),
                child: FlutterLogo(),
              ),
              Container(
                color: Colors.amberAccent,
                height: 200,
                width: 200,
                margin: EdgeInsets.all(10),
                child: FlutterLogo(),
              ),
              Container(
                color: Colors.amberAccent,
                height: 200,
                width: 200,
                margin: EdgeInsets.all(10),
                child: FlutterLogo(),
              ),
              Container(
                color: Colors.amberAccent,
                height: 200,
                width: 200,
                margin: EdgeInsets.all(10),
                child: FlutterLogo(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}