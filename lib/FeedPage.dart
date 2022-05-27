import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui/people_model.dart';
import 'package:ui/person_card.dart';


class FeedPage extends StatefulWidget {

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<Person> person=[
    Person("Ahmed", "SoftWare Developer", "img/avater2.jpg", '2.34'),
    Person("Ghada", "Designer", "img/avater2.jpg", '6.34'),
    Person("Mohamed", "Banker", "img/avater2.jpg", '2.34'),
    Person("Yousef", "Android Developer", "img/avater2.jpg", '2.34'),
    Person("Ahmed", "Doctor ", "img/avater2.jpg", '2.34'),
    Person("Ali", "SoftWare Developer", "img/avater2.jpg", '2.34'),
    Person("Gamal", "Web Developer", "img/avater2.jpg", '2.34'),
    Person("Mostafa", "SoftWare Developer", "img/avater2.jpg", '2.34'),
  ];
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(15, 50, 15, 15),
          color: HexColor('#ffbb39'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Softwaer Developer",style: TextStyle(color: HexColor('000000'),fontSize:20,fontWeight: FontWeight.bold ),),
              Icon(Icons.format_align_center_outlined),
            ],
          ),
        ),
        Expanded(child: SingleChildScrollView(
          child: Column(
            children:person.map((e)
            {
              return PersonDeitalCard(person: e);
            }) .toList()

          ),
        ),
        ),
      ],
    );
  }
}
