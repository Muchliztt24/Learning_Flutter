import 'package:belajar/main_layout.dart';
import 'package:flutter/material.dart';

class ListViewTiga extends StatelessWidget {
   ListViewTiga({super.key});

  final List<Color> colorlist = [
    Colors.redAccent,
    Colors.greenAccent,
    Colors.yellowAccent,
  ];
  final List<String> partailist = [
    'PDI',
    'PPP',
    'GOLKAR',
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'PARTAI',
      body: SizedBox(
        width: double.infinity,
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorlist.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 300,
              color: colorlist[index],
              child: Text(partailist[index]),
            );
          },
        ),
      ),
    );
  }
}
