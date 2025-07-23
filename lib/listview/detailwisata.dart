import 'package:belajar/main_layout.dart';
import 'package:flutter/material.dart';

class DetailWisataScreen extends StatelessWidget {
  final String nama;
  final String kota;
  final String negara;
  final String image;
  final String deskripsi;

  const DetailWisataScreen({
    super.key,
    required this.nama,
    required this.kota,
    required this.negara,
    required this.image,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: nama,
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
              Center(child: Text("$nama - $kota - $negara")),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(height: 280,child: Text(deskripsi)),
            ],
          ),
        ),
      ),
    );
  }
}
