
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            child: SingleChildScrollView(
      child: Column(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              SizedBox(height: 30),
              Spacer(),
              Center(
                  child: Text(
                    'EasyInvest',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontFamily: "Quicksand-Bold"),
                  ),
              ),
            ],
          ),
        ),
        SizedBox(height: 150),

        Container(
          child: Align(
            alignment: Alignment.center,
            child: Text('Qual o nome da sua empresa?'),
          ),
        ),

        Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 45,
                margin: EdgeInsets.only(top: 12),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ]),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Ex: BadRuim',
                    labelStyle: TextStyle(
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),

               FlatButton(
                 hoverColor: Colors.amber,
                 color: Colors.amberAccent,
                        child: Text(
                          'Próximo'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Quicksand"),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })

            ]))));}}