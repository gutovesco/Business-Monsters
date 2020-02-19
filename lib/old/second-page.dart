import 'package:Business_Monsters/login-screen.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPage createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {
  final List<String> subjects = ["Comércio", "Digital Products"];

  String selectedSubject = "Digital Products";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black,
        )
      ),*/
        backgroundColor: Colors.grey[300],
        body: Container(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Center(
                  child: Text(
                    'BadRuim',
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
              child: Text('Qual o ramo da sua empresa?'),
            ),
          ),
          SizedBox(height: 20),
          DropdownButton<String>(
            iconSize: 24,
            elevation: 6,
            style: TextStyle(color: Colors.black),
            value: selectedSubject,
            onChanged: (value) {
              setState(() {
                selectedSubject = value;
              });
            },
            items: subjects.map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem(
                child: Text(value),
                value: value,
              );
            }).toList(),
          ),
          Container(
              width: 50,
              height: 100,
              decoration: BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage(
                          "https://www.materialui.co/materialIcons/navigation/arrow_forward_grey_192x192.png",
                          scale: 8)),
                  color: Colors.grey[400],
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[600],
                        offset: Offset(1.0, 1.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey[200],
                        Colors.grey[300],
                        Colors.grey[400],
                        Colors.grey[500],
                      ],
                      stops: [
                        0.1,
                        0.3,
                        0.8,
                        0.9,
                      ])),
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(children: <Widget>[
                    Expanded(
                      child: GestureDetector(onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new LoginScreen()));
                      }),

                      /*FlatButton(
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
                        })*/
                    )
                  ])))
        ]))));
  }
}
