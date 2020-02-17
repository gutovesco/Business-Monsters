import 'package:Business_Monsters/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color palleteBlue = Color(0xff010a43);
Color palleteLightPink = Color(0xffffc2c2);
Color palleteMediumPink = Color(0xffff9d9d);
Color palletePink = Color(0xffff2e63);

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
                            height: ScreenUtil().setHeight(30),
                          ),
                          Text(
                            "Business Monsters",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'LuckiestGuy',
                                color: palleteMediumPink,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 25),
                          Center(
                            child: Text('Uhulll!!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'LuckiestGuy',
                                  fontSize: 26,
                                  color: Colors.black,
                                )),
                          ),
                          Container(
                            constraints: BoxConstraints.expand(
                              height: 300.0,
                            ),
                            decoration: BoxDecoration(
                                image: new DecorationImage(
                              image: new ExactAssetImage(
                                'assets/profile_pic.png',
                              ),
                              fit: BoxFit.scaleDown,
                            )),
                          ),
                          SizedBox(height: 15),
                          Center(
                            child: Text(
                                'Temos um novo monstrinho empreendedor!\nVamos torná-lo gigante!',
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
                                'A cada missão concluída, você receberá algumas moedas.\n Resgate benefícios incríveis com elas!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'LuckiestGuy',
                                  fontSize: 20,
                                  color: Colors.grey[500],
                                )),
                          ),
                          SizedBox(height: 10),
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
            colors: [palletePink, palleteMediumPink]),),
                        child: Text(
                          "Submeter",
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
