import 'package:belajar/container/satu.dart';
import 'package:belajar/main_layout.dart';
import 'package:flutter/material.dart';

class ContainerTiga extends StatelessWidget {
  const ContainerTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container 3',
      body: Column(
        children: [
          Container(
            width: 400,
            height: 400,
            margin: EdgeInsets.all(5),
            color: Colors.cyan,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("Satu"),
                ),
                Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(5),
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text("Dua"),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.all(5),
                        color: const Color.fromARGB(255, 7, 255, 7),
                        child: Center(
                           child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContainerSatu()));
                },
                child: Text("Pindah Ke Container 1"))),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
