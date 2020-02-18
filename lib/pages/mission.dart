import 'package:flutter/material.dart';
import 'package:Business_Monsters/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

MyColors myColors = MyColors();

const KEY = "AIzaSyC0SY9LnLAmyBactNug5GsejuMrQG_TXoM";
const LINK = "https://www.youtube.com/watch?v=et95f_cwNnw";

class Mission extends StatefulWidget {
  @override
  _MissionState createState() => _MissionState();
}

List<String> titleText = [
  "ahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh",
  "Qual a importância de UX/UI?",
  "Conceitos básicos",
  "Aprendendo com exemplos",
  "Criando seu primeiro projeto",
  "Ferramentas úteis",
  "Como engajar o usúario",
];
List<String> xpDesc = [
  "XP: 0 / 30",
  "XP: 0 / 45",
  "XP: 0 / 75",
  "XP: 0 / 40",
  "XP: 0 / 20",
  "XP: 0 / 80",
  "XP: 0 / 55",
  "XP: 0 / 65",
];
List<String> lessonDesc = [
  "1",
  "2",
  "3",
  "4",
  "5",
];
List<String> phase = ["Fase 1", "Fase 3"];
List<String> phase2 = ["Fase 2", "Fase 4"];

class _MissionState extends State<Mission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Row(
          children: [
            Text("Trilha UX/UI"),
          ],
        ),
//        centerTitle: true,
        gradient: LinearGradient(
            colors: [myColors.palletePink, myColors.palleteMediumPink]),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: new Text("Info"),
                          content: new Text(
                              "Não existem erros nessa tela, software bom é software com bug ;)"),
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
                },
                icon: Icon(
                  Icons.help,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: AnimationLimiter(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: Container(
                      width: double.infinity,
                      color: Colors.grey[300],
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            head(),
                            umContainer(
                                "Video: Descobrindo o minimo produto viável",
                                xpDesc[index],
                                titleText[index],
                                "assets/playbutton.png",
                                0),
                            umContainer("Texto complementar", xpDesc[index],
                                titleText[index], "assets/book.png", 1),
                            umContainer("Desafio", xpDesc[index],
                                titleText[index], "assets/sword.png", 2),
                            footer()
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  //head é onde está o titulo
  Widget head() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
      width: 390,
      child: Card(
        color: myColors.palletePink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(12),
              child: Text(
                "Missão 1: O que é MVP",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //conteudo da pagina onde tem as o card com o video, conteudo e desafio
  Widget umContainer(String text, String xp, String title, String img, int id) {
    return GestureDetector(
      onTap: () => {
        if (id == 0)
          {
            FlutterYoutube.playYoutubeVideoByUrl(
                apiKey: KEY, videoUrl: LINK, autoPlay: true, fullScreen: true)
          }
        else if (id == 1)
          {print("texto complementar")}
        else if (id == 2)
          {print("Desafio")}
      },
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(25)),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          child: Center(
              child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(img),
              ),
              Container(
                margin: EdgeInsets.all(4),
                width: 275,
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ],
          ))),
    );
  }
}

//Esse widget é o "botao" concluir
Widget footer() {
  return GestureDetector(
    onTap: () => print("Enviar"),
    child: Container(
      margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
      width: 390,
      child: Card(
        color: myColors.palletePink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(12),
              child: Text(
                "Concluir",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
