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

  const MenuCard({
    Key key,
    this.width,
    this.height,
    this.text,
    this.color,
    this.text2,
    this.color2,
    this.desc,
    this.desc2
  }) : super(key: key);

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
                    ClayText(text, emboss: false, size: 20),
                    ClayText(desc, emboss: false, size: 12),
                  ],
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
                    ClayText(text2, emboss: false, size: 20),
                    ClayText(desc2, emboss: false, size: 12),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
