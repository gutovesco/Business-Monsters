import 'package:flutter/material.dart';
import 'package:Business_Monsters/utils/colors.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:Business_Monsters/cards/menu_card.dart';
import 'dart:io';

MyColors myColors = MyColors();

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    List<Color> card_colors1 = [
      myColors.block1,
      myColors.block2,
      myColors.block3,
      myColors.block4,
      myColors.block5,
      myColors.block6
    ];
    List<Color> card_colors2 = [
      myColors.block4,
      myColors.block5,
      myColors.block6,
      myColors.block1,
      myColors.block2,
      myColors.block3,
    ];
    List<String> title1 = [
      "Missão 0",
      "UX/UI",
      "Business",
      "Finanças",
      "Marketing",
      "Tecnologia"
    ];
    List<String> title2 = [
      "Finanças",
      "Marketing",
      "Tecnologia",
      "Missão 0",
      "UX/UI",
      "Business"
    ];

    List<String> desc = ["Teste Inicial", "0/53", "0/42", "0/30", "0/61", "0/34"];
    List<String> desc2 = ["0/30", "0/61", "0/34", "0/20", "0/53", "0/42"];

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
//          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/profile_pic.png',
                fit: BoxFit.contain,
                height: 42,
              ),
              Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Text('Joana Souza'),
                      Text(
                        "XP: 125",
                        style: TextStyle(fontSize: 12.0),
                      )
                    ],
                  ))
            ],
          ),
//        centerTitle: true,
          backgroundColor: myColors.bars,
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: AnimationLimiter(
            child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 800),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: MenuCard(
                      width: 160.0,
                      height: 150.0,
                      color: card_colors1[index],
                      color2: card_colors2[index],
                      text2: title2[index],
                      text: title1[index],
                      desc2: desc2[index],
                      desc: desc[index]),
                ),
              ),
            );
          },
        )));
  }

  void choiceAction(String choice) {
    if (choice == Constants.DarkMode) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("Erro"),
              content: new Text("Deixe de frescura e use da forma que está ;)"),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    } else if (choice == Constants.About) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("Equipe"),
              content: new Text("Yves\nSamuel\nAugusto\nCaio\nGitRepo:"),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    } else if (choice == Constants.Exit) {
      exit(0);
    }
  }
}

class Constants {
  static const String DarkMode = 'Modo Noturno';
  static const String About = 'Sobre';
  static const String Exit = 'Sair';

  static const List<String> choices = <String>[DarkMode, About, Exit];
}
