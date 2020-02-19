import 'package:Business_Monsters/pages/mission.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:Business_Monsters/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

MyColors myColors = MyColors();

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

List<String> titleText = [
  "O que é MVP?",
  "Qual a importância de um plano de negócios?",
  "Conceitos básicos",
  "Aprendendo com exemplos",
  "Idealizando seu MVP",
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

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Row(
          children: [
            Text("Trilha Business"),
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
            itemCount: 2,
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
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                              width: 690,
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
                                        phase[index],
                                        style: TextStyle(
                                            fontSize: 36,
                                            color: Colors.white,
                                            fontFamily: 'LuckiestGuy'),
                                      ),
                                    ),
                                    umContainer(lessonDesc[index],
                                        xpDesc[index], titleText[index]),
                                    containerDuplo(),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                                width: 690,
                                child: Card(
                                    color: myColors.block5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Column(children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: Text(
                                          phase2[index],
                                          style: TextStyle(
                                              fontSize: 36,
                                              color: Colors.white,
                                              fontFamily: 'LuckiestGuy'),
                                        ),
                                      ),
                                      umContainer(lessonDesc[index],
                                          xpDesc[index], titleText[index + 3]),
                                      containerDuplo(),
                                      containertriplo(),
                                    ])))
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

  Widget umContainer(String text, String xp, String title) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          new MaterialPageRoute(builder: (BuildContext context) => Mission())),
      child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
          child: Center(
              child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Container(
                    decoration:
                        BoxDecoration(color: myColors.palleteMediumPink),
                    child: Center(
                      child: Text(
                        text,
                        style: TextStyle(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 3
                            ..color = Colors.white,
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                width: 100,
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Squada One'),
                  ),
                ),
              ),
              Text(
                xp,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.limeAccent, fontFamily: 'Squada One'),
              )
            ],
          ))),
    );
  }

  Widget containerDuplo() {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: umContainer(lessonDesc[1], xpDesc[1], titleText[1]),
        ),
        Flexible(
          flex: 1,
          child: umContainer(lessonDesc[2], xpDesc[2], titleText[2]),
        )
      ],
    );
  }

  Widget containertriplo() {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: umContainer(lessonDesc[3], xpDesc[3], titleText[3]),
        ),
        Flexible(
          flex: 1,
          child: umContainer(lessonDesc[4], xpDesc[4], titleText[4]),
        ),
        Flexible(
          flex: 1,
          child: umContainer(lessonDesc[2], xpDesc[2], titleText[2]),
        )
      ],
    );
  }
}
