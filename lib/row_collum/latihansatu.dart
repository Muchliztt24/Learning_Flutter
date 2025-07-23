import 'package:flutter/material.dart';
import 'package:belajar/main_layout.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan Row & Col',
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 1000,
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  height: 150,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Legenda Seluler',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        margin: EdgeInsets.only(right: 10),
                        color: Colors.blue,
                        child: Image.network('https://www.stickpng.com/img/icons-logos-emojis/iconic-brands/mobile-legends-logo.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        color: Colors.green,
                        child: Image.network('https://commons.wikimedia.org/wiki/File:MobileIsLegends.png#/media/Berkas:MobileIsLegends.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        margin: EdgeInsets.only(right: 10),
                        color: Colors.red,
                        child: Image.network('https://commons.wikimedia.org/wiki/File:MobileIsLegends.png#/media/Berkas:MobileIsLegends.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        margin: EdgeInsets.only(right: 10),
                        color: Colors.orange,
                        child: Image.network('https://commons.wikimedia.org/wiki/File:MobileIsLegends.png#/media/Berkas:MobileIsLegends.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        color: Colors.purple,
                        child: Image.network('https://commons.wikimedia.org/wiki/File:MobileIsLegends.png#/media/Berkas:MobileIsLegends.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
