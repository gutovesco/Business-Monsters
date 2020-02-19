import 'package:Business_Monsters/home.dart';
import 'package:Business_Monsters/pages/congratulation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color palleteBlue = Color(0xff010a43);
Color palleteLightPink = Color(0xffffc2c2);
Color palleteMediumPink = Color(0xffff9d9d);
Color palletePink = Color(0xffff2e63);

var finalScore = 0;
var questionNumber = 0;
var quiz = new InitialQuiz();

class InitialQuiz {
  var choices = [
    [
      "Produto mínimo viável",
      "Máximo volume possível",
      "Máximo venda de produto",
      "Menor valor praticado"
    ],
    [
      "(Retorno do investimento - custo do investimento)/custo do investimento",
      "Retorno do investimento – custo do investimento",
      "Retorno do investimento * custo do investimento/ 100",
      "Retorno do investimento + custo do investimento"
    ],
    [
      "É um plano que foi desenvolvido visando a dominação do mundo",
      "É um plano que descreve os passos a seguir para fechar o negócio",
      "Documento que descreve os objetivos de um negócio e os passos que devem ser dados pelo empreendedor",
      "É um plano específico que deve ser seguido por todas as empresas que desejam ter sucesso"
    ],
    [
      "Pessoas que não trabalham e ganham muito dinheiro às custas das outras pessoas",
      "Pessoas que começaram a trabalhar cedo e acabaram criando grandes empresas",
      "Pessoas que começaram a trabalhar desde de muito tarde, com poucas condições e acabaram criando grandes empresas fracassadas",
      "Pessoas que nunca trabalharam mas tiveram sorte e obtiveram muito sucesso no seu primeiro emprego"
    ]
  ];

  var correctAnswers = [
    "Máximo venda de produto",
    "(Retorno do investimento - custo do investimento)/custo do investimento",
    "Documento que descreve os objetivos de um negócio e os passos que devem ser dados pelo empreendedor",
    "Pessoas que começaram a trabalhar cedo e acabaram criando grandes empresas"
  ];

  var questions = [
    "Qual o significado da sigla MVP em português?",
    "Como faço para calcular o ROI?",
    "O que é Plano de Negócios?",
    "O que é um Empreendedor nato?",
  ];
}

class Quiz1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Summary(
                      score: finalScore,
                    )));
      } else {
        questionNumber++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                new Padding(padding: EdgeInsets.all(20.0)),
                new Container(
                  alignment: Alignment.centerRight,
                  child: new Center(
                    child: new Text(
                      "Missão 1 - Teste de Nivelamento",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          color: palleteBlue,
                          fontSize: 36.0,
                          fontFamily: 'LuckiestGuy'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: new Text(
                    quiz.questions[questionNumber],
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: palleteLightPink,
                      fontSize: 32.0,
                      fontFamily: 'LuckiestGuy',
                    ),
                  ),
                ),
                SizedBox(height: 100),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 1
                    GestureDetector(
                        onTap: () {
                          if (quiz.choices[questionNumber][0] ==
                              quiz.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          width: 550,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: palletePink,
                          ),
                          child: Text(
                            quiz.choices[questionNumber][0],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontFamily: 'Squada One'),
                          ),
                        )),
                    SizedBox(height: 20),

                    //button 2
                    GestureDetector(
                        onTap: () {
                          if (quiz.choices[questionNumber][1] ==
                              quiz.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          width: 550,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: palletePink,
                          ),
                          child: Text(
                            quiz.choices[questionNumber][1],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontFamily: 'Squada One'),
                          ),
                        )),
                  ],
                ),
                SizedBox(height: 20),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 3
                    GestureDetector(
                        onTap: () {
                          if (quiz.choices[questionNumber][2] ==
                              quiz.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          width: 550,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: palletePink,
                          ),
                          child: Text(
                            quiz.choices[questionNumber][2],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontFamily: 'Squada One'),
                          ),
                        )),

                    SizedBox(height: 20),

                    //button 4
                    GestureDetector(
                        onTap: () {
                          if (quiz.choices[questionNumber][3] ==
                              quiz.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          width: 550,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: palletePink,
                          ),
                          child: Text(
                            quiz.choices[questionNumber][3],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontFamily: 'Squada One'),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class Summary extends StatelessWidget {
  Summary({Key key, @required this.score}) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: new Container(
          margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(120)),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Você acertou: $score",
                style: new TextStyle(fontFamily: 'LuckiestGuy', fontSize: 42.0),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Congratulations()));
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  height: ScreenUtil().setHeight(120),
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F3F6),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        colors: [palletePink, palleteMediumPink]),
                  ),
                  child: Text(
                    "Continuar",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
