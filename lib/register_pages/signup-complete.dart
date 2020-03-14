import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Business_Monsters/pages/quiz0.dart';

Color palleteLightGrey = Color(0xffc4d1fa);
Color palleteLightBlue = Color(0xff829ef6);
Color palleteMediumBlue = Color(0xff3b66f1);
Color palleteBlue = Color(0xff1144e8);

class SignupComplete extends StatefulWidget {
  SignupComplete({Key key}) : super(key: key);

  @override
  _SignupCompleteState createState() => _SignupCompleteState();
}

class _SignupCompleteState extends State<SignupComplete> {
  bool status = true;

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
                        horizontal: ScreenUtil().setWidth(60)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: ScreenUtil().setHeight(100),
                          ),
                          Text(
                            "Bem vinda, Joana",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'LuckiestGuy',
                                color: palleteMediumBlue,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 25),
                          Container(
                            constraints: BoxConstraints.expand(
                              height: 300.0,
                            ),
                            decoration: BoxDecoration(
                                image: new DecorationImage(
                              image: new ExactAssetImage(
                                'assets/businessman2.jpg',
                              ),
                              fit: BoxFit.scaleDown,
                            )),
                          ),
                          SizedBox(height: 15),
                          Center(
                            child: Text(
                                'Temos um novo monstrinho empreendedor!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'LuckiestGuy',
                                  fontSize: 20,
                                  color: Colors.black,
                                )),
                          ),
                          SizedBox(height: 25),
                          Center(
                            child: Text(
                                'A cada missão concluída, você receberá pontos de experiência.\nResgate prêmios incríveis com XP!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'LuckiestGuy',
                                  fontSize: 18,
                                  color: Colors.grey[500],
                                )),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                     onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>  new Quiz1()));
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
            colors: [palleteBlue, palleteMediumBlue]),),
                        child: Text(
                          "Vamos Lá!",
                          style: TextStyle(
                            fontFamily: 'LuckiestGuy',
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ),
                    ),
                        ])))));
  }
}
