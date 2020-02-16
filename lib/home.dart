import 'package:Business_Monsters/pages/rewards_page.dart';
import 'package:flutter/material.dart';
import 'package:Business_Monsters/pages/profile_page.dart';
import 'package:Business_Monsters/pages/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  int _page = 1;
  final ProfilePage _profile = new ProfilePage();
  final BenefitsPage _rewards = new BenefitsPage();
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
