import 'package:Business_Monsters/pages/content_page.dart';
import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';

class MenuCard extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final String text2;
  final String desc;
  final String desc2;
  final Color color;
  final Color color2;

  const MenuCard(
      {Key key,
      this.width,
      this.height,
      this.text,
      this.color,
      this.text2,
      this.color2,
      this.desc,
      this.desc2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: width,
          width: height,
          margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
//            boxShadow: <BoxShadow>[
//              BoxShadow(
//                color: Colors.black12,
//                blurRadius: 4.0,
//                offset: const Offset(0.0, 4.0),
//              ),
//            ],
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new ContentPage()));
            },
            child: ClayContainer(
              color: color,
              height: width,
              width: height,
              borderRadius: 25,
              depth: 40,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(text, style: TextStyle(fontFamily: 'LuckiestGuy', fontSize: 32, color: Colors.white),),
                      Text(desc, style: TextStyle(fontFamily: 'LuckiestGuy', fontSize: 16, color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 25),
        Container(
          height: width,
          width: height,
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
//            boxShadow: <BoxShadow>[
//              BoxShadow(
//                color: Colors.black12,
//                blurRadius: 4.0,
//                offset: const Offset(0.0, 4.0),
//              ),
//            ],
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new ContentPage()));
            },
            child: ClayContainer(
              color: color2,
              height: width,
              width: height,
              borderRadius: 25,
              depth: 40,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(text2, style: TextStyle(fontFamily: 'LuckiestGuy', fontSize: 32, color: Colors.white),),
                      Text(desc2, style: TextStyle(fontFamily: 'LuckiestGuy', fontSize: 16, color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
