import 'package:flutter/material.dart';
import 'package:belajar/listview/detaillevel.dart';

class LevelingScreen extends StatelessWidget {
  LevelingScreen({super.key});

  final List<Map<String, dynamic>> LevelingData = [
    {
      "nama": "Maliki yaumiddin",
      "gender": "Laki-Laki",
      "Foto": "images/racoon.jpeg",
      "point": "1000",
      "level": "99",
      "bio": "Alfatihah",
      "zodiac": "Libra",
    },
    {
      "nama": "Alya Nurazizah",
      "gender": "Perempuan",
      "Foto": "images/racoon.jpeg",
      "point": "850",
      "level": "87",
      "bio": "Senyum adalah kekuatan.",
      "zodiac": "Gemini"
    },
    {
      "nama": "Raka Firmansyah",
      "gender": "Laki-Laki",
      "Foto": "images/racoon.jpeg",
      "point": "920",
      "level": "90",
      "bio": "Jalan hidup penuh liku.",
      "zodiac": "Leo"
    },
    {
      "nama": "Indira Maharani",
      "gender": "Perempuan",
      "Foto": "images/racoon.jpeg",
      "point": "770",
      "level": "82",
      "bio": "Pecinta langit malam.",
      "zodiac": "Taurus"
    },
    {
      "nama": "Gilang Prasetyo",
      "gender": "Laki-Laki",
      "Foto": "images/racoon.jpeg",
      "point": "1100",
      "level": "100",
      "bio": "Pantang menyerah.",
      "zodiac": "Sagittarius"
    },
    {
      "nama": "Nayla Zahra",
      "gender": "Perempuan",
      "Foto": "images/racoon.jpeg",
      "point": "600",
      "level": "75",
      "bio": "Cinta kedamaian.",
      "zodiac": "Cancer"
    },
    {
      "nama": "Farhan Dwi",
      "gender": "Laki-Laki",
      "Foto": "images/racoon.jpeg",
      "point": "980",
      "level": "95",
      "bio": "Berjuang untuk masa depan.",
      "zodiac": "Aquarius"
    },
    {
      "nama": "Aurel Listiyana",
      "gender": "Perempuan",
      "Foto": "images/racoon.jpeg",
      "point": "890",
      "level": "88",
      "bio": "Berpikir positif.",
      "zodiac": "Pisces"
    },
    {
      "nama": "Zaidan Hakim",
      "gender": "Laki-Laki",
      "Foto": "images/racoon.jpeg",
      "point": "760",
      "level": "80",
      "bio": "Jangan pernah takut gagal.",
      "zodiac": "Capricorn"
    },
    {
      "nama": "Citra Rahmawati",
      "gender": "Perempuan",
      "Foto": "images/racoon.jpeg",
      "point": "910",
      "level": "89",
      "bio": "Hidup itu pilihan.",
      "zodiac": "Aries"
    },
    {
      "nama": "Dimas Nugraha",
      "gender": "Laki-Laki",
      "Foto": "images/racoon.jpeg",
      "point": "640",
      "level": "77",
      "bio": "Fokus dan disiplin.",
      "zodiac": "Virgo"
    },
    {
      "nama": "Safira Melani",
      "gender": "Perempuan",
      "Foto": "images/racoon.jpeg",
      "point": "1050",
      "level": "98",
      "bio": "Bicara dengan hati.",
      "zodiac": "Scorpio"
    },
    {
      "nama": "Iqbal Maulana",
      "gender": "Laki-Laki",
      "Foto": "images/racoon.jpeg",
      "point": "875",
      "level": "85",
      "bio": "Bersinar dalam diam.",
      "zodiac": "Libra"
    },
    {
      "nama": "Rania Kusuma",
      "gender": "Perempuan",
      "Foto": "images/racoon.jpeg",
      "point": "950",
      "level": "93",
      "bio": "Mengejar mimpi tanpa batas.",
      "zodiac": "Leo"
    },
    {
      "nama": "Farel Septian",
      "gender": "Laki-Laki",
      "Foto": "images/racoon.jpeg",
      "point": "720",
      "level": "78",
      "bio": "Diam bukan berarti lemah.",
      "zodiac": "Pisces"
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
              Color.fromARGB(255, 239, 119, 13),
              Color.fromARGB(255, 187, 254, 2),
              const Color.fromARGB(255, 231, 208, 2),
              const Color.fromARGB(255, 28, 145, 203)
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: ListView.builder(
          itemCount: LevelingData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailLevelingScreen(
                      nama: LevelingData[index]["nama"],
                      gender: LevelingData[index]["gender"],
                      foto: LevelingData[index]["Foto"],
                      point :LevelingData[index]["point"],
                      level :LevelingData[index]["level"],
                      bio: LevelingData[index]["bio"],
                      zodiac: LevelingData[index]["zodiac"],
                    ),
                  ),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(LevelingData[index]["Foto"]),
                  ),
                  title: Text(LevelingData[index]["nama"]),
                  subtitle: Text(
                    "Level: ${LevelingData[index]["level"]} | Point: ${LevelingData[index]["point"]}\n"
                    "Bio: ${LevelingData[index]["bio"]}\n"
                    "Zodiac: ${LevelingData[index]["zodiac"]}",
                  ),
                  trailing: Icon(
                    LevelingData[index]["gender"] == "Laki-Laki"
                        ? Icons.male
                        : Icons.female,
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


