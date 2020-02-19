import 'package:Business_Monsters/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color palleteBlue = Color(0xff010a43);
Color palleteLightPink = Color(0xffffc2c2);
Color palleteMediumPink = Color(0xffff9d9d);
Color palletePink = Color(0xffff2e63);

class Congratulations extends StatefulWidget {
  Congratulations({Key key}) : super(key: key);

  @override
  _CongratulationsState createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 1860, allowFontScaling: false);
    return Scaffold(
        backgroundColor: Color(0xFFF1F3F6),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(40)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: ScreenUtil().setHeight(100),
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 130, 0 ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Column (
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          constraints: BoxConstraints.expand(
                                            height: 100.0,
                                          ),
                                          decoration: BoxDecoration(
                                              image: new DecorationImage(
                                                alignment: Alignment.centerRight,
                                                image: new ExactAssetImage(
                                                    'assets/party.png',
                                                    scale: 1.0
                                                ),
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Text('PARABÉNS!',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.pink,
                                          fontFamily: 'LuckiestGuy',
                                          fontSize: 56
                                      ),
                                    ),
                                  ),

                                ],
                              )
                          ),


                          SizedBox(height: 25),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column (
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                       child: Image(image: AssetImage(
                                'assets/profile_pic.png',

                            ),),
                                        decoration: BoxDecoration(
                                image: new DecorationImage(
                                  alignment: Alignment.centerLeft,
                              image: new ExactAssetImage(
                                'assets/profile_pic.png',
                                scale: 1.0
                              ),
                                      )
                                        ),
                                        )],
                                  )
                                  ),
                                  new Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 90, 0 ),
                                     child: Text('+50 XP',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 40
                            ),
                            ),
                                    ),
                              ],
                            )
                          ),
                          SizedBox(height: 40),
                          Text(
                              'Você acaba de completar sua primeira missão!\nSeu conteúdo de aprendizado foi adaptado para atender seu perfil atual.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: palleteMediumPink,
                                fontFamily: 'LuckiestGuy',
                              )),

                          SizedBox(height: 120),
                          GestureDetector(
                     onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) => Home()));
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
                          "IR PARA CONTEÚDO",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16, fontFamily: 'LuckiestGuy',),
                        ),
                      ),
                    ),
                        ])))));
  }
}
