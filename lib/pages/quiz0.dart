import 'package:Business_Monsters/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


var finalScore = 0;
var questionNumber = 0;
var quiz = new AnimalQuiz();

class AnimalQuiz{

  var choices = [
    ["Produto mínimo viável", "Máximo volume possível","Máximo venda de produto", "Menor valor praticado"],
    
    ["(Retorno do investimento - custo do investimento)/custo do investimento", 
    "Retorno do investimento – custo do investimento", 
    "Retorno do investimento * custo do investimento/ 100", 
    "Retorno do investimento + custo do investimento"],

    ["É um plano que foi desenvolvido visando a dominação do mundo", "É um plano que descreve os passos a seguir para fechar o negócio", 
    "É um documento que descreve os objetivos de um negócio e quais os passos que devem ser dados pelo empreendedor", 
    "É um plano específico que deve ser seguido por todas as empresas que desejam ter sucesso"],

    ["São pessoas que não trabalham e ganham muito dinheiro às custas das outras pessoas", 
    "São pessoas que começaram a trabalhar desde de muito cedo, com poucas condições e acabaram criando grandes empresas", 
    "São pessoas que começaram a trabalhar desde de muito tarde, com poucas condições e acabaram criando grandes empresas fracassadas", 
    "São pessoas que nunca trabalharam mas tiveram sorte e obtiveram muito sucesso no seu primeiro emprego"]
  ];

  var correctAnswers = [
    "Máximo venda de produto", 
    "(Retorno do investimento - custo do investimento)/custo do investimento", 
    "É um documento que descreve os objetivos de um negócio e quais os passos que devem ser dados pelo empreendedor",
    "São pessoas que começaram a trabalhar desde de muito cedo, com poucas condições e acabaram criando grandes empresas"
  ];

  var questions = [
    "Qual o significado da sigla MVP em português?",
    "Como faço para calcular o ROI?",
    "O que é Plano de Negócios?",
    "O que é um Empreendedor nato?",
  ];
}

class Quiz1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion(){
    setState(() {
      if(questionNumber == quiz.questions.length - 1){
        Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Summary(score: finalScore,)));

      }else{
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
                      height: ScreenUtil().setHeight(110),
                    ),
                new Padding(padding: EdgeInsets.all(20.0)),

                new Container(
                  alignment: Alignment.centerRight,
                  child: new Center(
                      child: new Text("Missão 1 - Teste de Nivelamento",
                      textAlign: TextAlign.center,
                        style: new TextStyle(
                            fontSize: 22.0
                        ),),
                  ),
                ),
                
                SizedBox( height: 30),
                Center(
                child: new Text(quiz.questions[questionNumber],
                textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),),),

                new Padding(padding: EdgeInsets.all(10.0)),
                SizedBox(height: 30),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 1
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: (){
                        if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]){
                          debugPrint("Correct");
                          finalScore++;
                        }else{
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][0],
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                    SizedBox(height: 10),

                    //button 2
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: (){

                        if(quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber]){
                          debugPrint("Correct");
                          finalScore++;
                        }else{
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(quiz.choices[questionNumber][1],
                      textAlign: TextAlign.center,
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    //button 3
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: (){

                        if(quiz.choices[questionNumber][2] == quiz.correctAnswers[questionNumber]){
                          debugPrint("Correct");
                          finalScore++;
                        }else{
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(quiz.choices[questionNumber][2],
                      textAlign: TextAlign.center,
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                    SizedBox(height: 10),

                    //button 4
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: (){

                        if(quiz.choices[questionNumber][3] == quiz.correctAnswers[questionNumber]){
                          debugPrint("Correct");
                          finalScore++;
                        }else{
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(quiz.choices[questionNumber][3],
                      textAlign: TextAlign.center,
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                  ],
                ),

                new Padding(padding: EdgeInsets.all(15.0)),

                new Container(
                  alignment: Alignment.bottomCenter,
                  child:  new MaterialButton(
                      minWidth: 240.0,
                      height: 30.0,
                      color: Colors.red,
                      onPressed: resetQuiz,
                      child: new Text("Sair",
                        style: new TextStyle(
                            fontSize: 18.0,
                            color: Colors.white
                        ),)
                  )
                ),
              ],
            ),
          ),

      )
    );
  }
}


class Summary extends StatelessWidget{
  Summary({Key key, @required this.score}) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Pontuação Final: $score",
              textAlign: TextAlign.center,
                style: new TextStyle(
                    fontSize: 35.0
                ),),

              new Padding(padding: EdgeInsets.all(30.0)),

              new MaterialButton(
                color: Colors.red,
                child: Text("Próximo"),
                onPressed: (){
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new MainPage()));
                },
              )
            ],
          ),
        ),


      ),
    );
  }
}