import 'package:belajar/main_layout.dart';
import 'package:flutter/material.dart';

class ListItem {
    final Color color;
    final String text;

    ListItem(this.color, this.text);
  }

class ListViewEmpat extends StatelessWidget {
  ListViewEmpat({super.key});

 final List<ListItem> itemlist = [
  ListItem(Colors.red, 'PDI SOLID SOLID SOLID'),
  ListItem(Colors.blue, 'PARTAI PERINDO JAYALAH INDO'),
  ListItem(Colors.yellow, 'GOLKAR'),
 ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'PARTAI',
      body: SizedBox(
        child: ListView.separated(
          separatorBuilder: (context, index){
            return Divider(color: Colors.red,);
          },
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 100,
              color: itemlist[index].color,
              child: Center(
                child: Text(itemlist[index].text),
              ),
            );
          },
          itemCount: itemlist.length,
        ),
      ),
    );
  }
}
