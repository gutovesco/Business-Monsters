import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.grey[300],
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                width: 390,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text(
                          "Fase 1",
                          style: TextStyle(fontSize: 21),
                        ),
                      ),
                      umContainer(),
                      containerDuplo(),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                width: 390,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text(
                          "Fase 2",
                          style: TextStyle(fontSize: 21),
                        ),
                      ),
                      umContainer(),
                      containerDuplo(),
                      containertriplo(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget umContainer() {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
        child: Center(
            child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text("Missão 1"),
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              child: SafeArea(
                  child: Center(
                child: Text("O que é UX?"),
              )),
            ),
            Text("XP : 0 / 75")
          ],
        )));
  }

  Widget containerDuplo() {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: umContainer(),
        ),
        Flexible(
          flex: 1,
          child: umContainer(),
        )
      ],
    );
  }

  Widget containertriplo() {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: umContainer(),
        ),
        Flexible(
          flex: 1,
          child: umContainer(),
        ),
        Flexible(
          flex: 1,
          child: umContainer(),
        )
      ],
    );
  }
}
