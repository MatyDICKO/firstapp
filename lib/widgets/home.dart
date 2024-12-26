import 'package:firstapp/models/planning.dart';
import 'package:firstapp/widgets/planning_widget.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {

  const Home({super.key});
  @override
  State<Home> createState() =>_HomeState();
}


class _HomeState extends State<Home> {

  List <Planning> datas=[

    Planning("dev mobile", "sup", "tres interressant", "11/30/24"),

    Planning("UML", "sup", "tres interressant", "11/30/24"),

    Planning("Anglais", "sup", "tres interressant", "11/30/24"),

    Planning("Programmation java", "sup", "tres interressant", "11/30/24"),

    Planning("Base de donnée", "sup", "tres interressant", "11/30/24"),

    Planning("Linux", "sup", "tres interressant", "11/30/24"),

    Planning("C", "sup", "tres interressant", "11/30/24"),

    Planning("c++", "sup", "tres interressant", "11/30/24"),

  ];

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
      title: Text("Page d'accueil"),
      elevation: 10,
      backgroundColor: Colors.cyan,
    ),
    body: ListView.builder(
      itemCount: datas.length,
      itemBuilder: (context, int index){
        return PlanningWidget(planning: datas[index]);
      }));

  }

}

