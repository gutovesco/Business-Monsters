import 'package:flutter/material.dart';
import 'package:Business_Monsters/pages/profile_page.dart';
import 'package:Business_Monsters/pages/home_page.dart';
import 'package:Business_Monsters/pages/rewards_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  int _page = 1;
  final ProfilePage _profile = new ProfilePage();
  final RewardsPage _rewards = new RewardsPage();
  final MainPage _main = MainPage();

  Widget _showPage = new MainPage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _profile;
        break;
      case 1:
        return _main;
        break;
      case 2:
        return _rewards;
        break;
      default:
        return new Container(
          child: Center(
            child: Text('No Page Found!'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: _showPage,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.0,
        index: _page,
        color: myColors.bars,
        backgroundColor: Colors.white,
        animationCurve: Curves.linearToEaseOut,
        items: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person,
                color: Colors.white,
              ),
              Text(
                "Perfil",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Text(
                "Material",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.attach_money,
                color: Colors.white,
              ),
              Text(
                "Prêmios",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
        ],
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),
    );
  }
}

//  final List<String> subjects = ["Básico", "Intermediário", 'Avançado'];
//
//  String selectedSubject = "Básico";

//    return Scaffold(
//        body: Container(
//            child: SingleChildScrollView(
//                child: Column(children: <Widget>[
//      Container(
//        width: MediaQuery.of(context).size.width,
//        height: MediaQuery.of(context).size.height / 4.5,
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Spacer(),
//            Center(
//                child: RaisedButton(
//              color: Colors.purple,
//              onPressed: () => (_themeChanger.setTheme(ThemeData.light())),
//            )),
//          ],
//        ),
//      ),
//      SizedBox(height: 150),
//      Container(
//        child: Align(
//          alignment: Alignment.center,
//          child: Text('Em qual nível está a sua empresa?'),
//        ),
//      ),
//      SizedBox(height: 20),
//      DropdownButton<String>(
//        iconSize: 24,
//        elevation: 6,
//        style: TextStyle(color: Colors.black),
//        value: selectedSubject,
//        onChanged: (value) {
//          setState(() {
//            selectedSubject = value;
//          });
//        },
//        items: subjects.map<DropdownMenuItem<String>>((value) {
//          return DropdownMenuItem(
//            child: Text(value),
//            value: value,
//          );
//        }).toList(),
//      ),
//      Container(
//          width: 50,
//          height: 100,
//          decoration: BoxDecoration(
//              image: new DecorationImage(
//                  image: new NetworkImage(
//                      "https://www.materialui.co/materialIcons/navigation/arrow_forward_grey_192x192.png",
//                      scale: 8)),
//              color: Colors.grey[300],
//              shape: BoxShape.circle,
//              boxShadow: [
//                BoxShadow(
//                    color: Colors.grey[600],
//                    offset: Offset(1.0, 1.0),
//                    blurRadius: 10.0,
//                    spreadRadius: 1.0),
//                BoxShadow(
//                    color: Colors.white,
//                    offset: Offset(-4.0, -4.0),
//                    blurRadius: 15.0,
//                    spreadRadius: 1.0),
//              ],
//              gradient: LinearGradient(
//                  begin: Alignment.topLeft,
//                  end: Alignment.bottomRight,
//                  colors: [
//                    Colors.grey[200],
//                    Colors.grey[300],
//                    Colors.grey[400],
//                    Colors.grey[500],
//                  ],
//                  stops: [
//                    0.1,
//                    0.3,
//                    0.8,
//                    0.9,
//                  ])),
//          child: Padding(
//              padding: EdgeInsets.all(20),
//              child: Row(children: <Widget>[
//                Expanded(child: GestureDetector(
//                  onTap: () {
//                    Navigator.push(
//                        context,
//                        new MaterialPageRoute(
//                            builder: (BuildContext context) =>
//                                new SecondPage()));
//                  },
//                ))
//
//                /*FlatButton(
//                 hoverColor: Colors.amber,
//                 color: Colors.amberAccent,
//                        child: Text(
//                          'Próximo'.toUpperCase(),
//                          style: TextStyle(
//                              color: Colors.black,
//                              fontWeight: FontWeight.bold,
//                              fontFamily: "Quicksand"),
//                        ),
//                        onPressed: () {
//                          Navigator.pop(context);
//                        })*/
//
//                /*
//            Container(
//                 width: 40,
//                height: 40,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                      BoxShadow(
//        color: Colors.white.withOpacity(0.1),
//        offset: Offset(-4.0, -4.0),
//        blurRadius: 16.0,
//      ),
//      BoxShadow(
//        color: Colors.black.withOpacity(0.4),
//        offset: Offset(4.0, 4.0),
//        blurRadius: 16.0,
//      ),
//    ],
//    color: Color(0xFF292D32),
//    borderRadius: BorderRadius.circular(30.0),
//                 ),
//                        */
////              ])))
////    ]))));
////  }
////}
////black button style
