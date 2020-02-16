import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                        horizontal: ScreenUtil().setWidth(70)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: ScreenUtil().setHeight(40),
                          ),
                          Text(
                            "Business Monsters",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 25),
                          Center(
                            child: Text('Uhulll!!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
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
                                  fontSize: 20,
                                  color: Colors.grey[500],
                                )),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          new SignupComplete()));
                            },
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              height: ScreenUtil().setHeight(120),
                              margin: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF1F3F6),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(10, 10),
                                        color:
                                            Color(0xFF4D70A6).withOpacity(0.2),
                                        blurRadius: 16),
                                    BoxShadow(
                                        offset: Offset(-10, -10),
                                        color:
                                            Color.fromARGB(170, 255, 255, 255),
                                        blurRadius: 10),
                                  ]),
                              child: Text(
                                "Começar",
                                style: TextStyle(
                                    color: Color.fromRGBO(78, 165, 4, 100),
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ])))));
  }
}
