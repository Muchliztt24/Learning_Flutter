import 'package:flutter/material.dart';
import 'package:belajar/listview/detailwisata.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

  final List<Map<String, dynamic>> wisatadata = [
    {
      "nama": "Ubud",
      "negara": "Indonesia",
      "kota": "Bali",
      "image": "images/Ubud.jpeg",
      "desk": "Wisata bali yang keren",
    },
    {
      "nama": "Pantai Kuta",
      "negara": "Indonesia",
      "kota": "Bali",
      "image": "images/Kuta.jpeg",
      "desk": "Wisata bali yang keren",
    },
    {
      "nama": "Salar De Uyuni",
      "negara": "Bolivia",
      "kota": "Potosi",
      "image": "images/SDU.jpeg",
      "desk": "Wisata Bolivia yang keren",
    },
    {
      "nama": "Grand Canyon",
      "negara": "Amerika Serikat",
      "kota": "Arizona",
      "image": "images/Gc.jpeg",
      "desk": "Wisata US yang keren",
    },
    {
      "nama": "Pura Ulun",
      "negara": "Indonesia",
      "kota": "Bali",
      "image": "images/PuraUlun.jpeg",
      "desk": "Wisata bali yang keren",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.pink,
              Colors.orange,
              Colors.yellow,
              Colors.blueGrey
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: ListView.builder(
          itemCount: wisatadata.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailWisataScreen(
                      nama: wisatadata[index]["nama"],
                      kota: wisatadata[index]["kota"],
                      negara: wisatadata[index]["negara"],
                      image: wisatadata[index]["image"],
                      deskripsi: wisatadata[index]["desk"],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${wisatadata[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Text(
                    "${wisatadata[index]["nama"]}-${wisatadata[index]["kota"]}-${wisatadata[index]["negara"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

