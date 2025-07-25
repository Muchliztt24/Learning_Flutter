import 'package:flutter/material.dart';
import 'package:belajar/main_layout.dart';

class DetailLevelingScreen extends StatelessWidget {
  final String nama;
  final String gender;
  final String foto;
  final String point;
  final String level;
  final String bio;
  final String zodiac;

  const DetailLevelingScreen({
    super.key,
    required this.nama,
    required this.gender,
    required this.foto,
    required this.point,
    required this.level,
    required this.bio,
    required this.zodiac,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.amber,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(child: Text("$nama - $level - $point")),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(foto),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(height: 360, child: Text(bio)),
            ],
          ),
        ),
      ),
    );
  }
}
