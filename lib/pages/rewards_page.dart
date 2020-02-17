
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color palleteBlue = Color(0xff010a43);
Color palleteLightPink = Color(0xffffc2c2);
Color palleteMediumPink = Color(0xffff9d9d);
Color palletePink = Color(0xffff2e63);

class BenefitsPage extends StatefulWidget {
  BenefitsPage({Key key}) : super(key: key);

  @override
  _BenefitsPage createState() => _BenefitsPage();
}

class _BenefitsPage extends State<BenefitsPage> {
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
                    horizontal: ScreenUtil().setWidth(120)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(90),
                    ),
                    Center(
                      child: Text(
                        "Business Monsters",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
),
                      TextField(
                      style: TextStyle(color: Colors.black,),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 2),
                          ),
                          labelText: "Buscar",
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14)),
                    ),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          color: palleteMediumPink,
                          onPressed: () {}, 
                          child: Text(
                            'Buscar',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                            )
                          )
                      ],
                    ),
                   
                        SizedBox(height: 50),
                      Divider(thickness: .5, color: Colors.black),

                        Container(
                         margin: EdgeInsets.fromLTRB(0, 20, 250, 5),
                      constraints: BoxConstraints.expand(
                        height: 50.0,
                      ),
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                        image: new ExactAssetImage('assets/calculator.png'),
                        )
                        ),
                        ),

                        SizedBox(height: 20),
                        
                        Container(
                         margin: EdgeInsets.fromLTRB(0, 20, 250, 5),
                      constraints: BoxConstraints.expand(
                        height: 50.0,
                      ),
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                        image: new ExactAssetImage('assets/cloud.png'),
                        )
                        ),
                        ),

                        SizedBox(height: 20),

                        Container(
                         margin: EdgeInsets.fromLTRB(0, 20, 250, 5),
                      constraints: BoxConstraints.expand(
                        height: 50.0,
                      ),
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                        image: new ExactAssetImage('assets/curso.png'),
                        )
                        ),
                        ),

])))));
  }
}
