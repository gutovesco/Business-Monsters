
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
        backgroundColor: Colors.white,
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
                          fontFamily: 'LuckiestGuy',
                          color: palleteMediumPink,
                          fontSize: 54,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow( // bottomLeft
                              offset: Offset(-2.5, -2.5),
                              color: Colors.black,
                            ),
                            Shadow( // bottomRight
                                offset: Offset(-2.5, -2.5),
                                color: Colors.black,
                            ),
                            Shadow( // topRight
                                offset: Offset(2.5, 2.5),
                                color: Colors.black,
                            ),
                            Shadow( // topLeft
                                offset: Offset(-2.5, 2.5),
                                color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
),
                      TextField(
                      style: TextStyle(color: palleteMediumPink),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: palleteMediumPink,
                                width: 2),
                          ),
                          labelText: "Pesquisar",
                          labelStyle: TextStyle(
                            fontFamily: 'LuckiestGuy',
                              color: palleteMediumPink,
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
                            style: TextStyle(color: Colors.white, fontFamily: 'LuckiestGuy'),
                            )
                          )
                      ],
                    ),
                    SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          Text(
                            "Benefícios",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'LuckiestGuy',
                              color: palleteMediumPink,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow( // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black,
                                ),
                                Shadow( // bottomRight
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black,
                                ),
                                Shadow( // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: palletePink,
                                ),
                                Shadow( // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: palletePink,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: .5, color: Colors.black),

                        Container(
                            color: Color.fromRGBO(243, 245, 248, 1),
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
                                  alignment: Alignment.centerLeft,
                              image: new ExactAssetImage(
                                'assets/calculator.png',
                                scale: 1.5
                              ),
                                      )
                                        ),
                                        )],
                                  )
                                  ),
                                  new Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0 ),
                                     child: Text('ContaJá \n 3 meses de acesso gratuito \n aos serviços da ContaJá',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'LuckiestGuy',
                              color: palleteMediumPink,
                              fontSize: 12
                            ),
                            ),
                                    ),
                          Padding(
                           padding: EdgeInsets.fromLTRB(0, 0, 10, 0 ),
                          child:
                          FlatButton(
                          color: palletePink,
                          onPressed: () {}, 
                          child: Text(
                            'Comprar \n 500 XP',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: 'LuckiestGuy',),
                            )
                          )
                          )
                              ],
                            )
                          ),

                        SizedBox(height: 20),
                        
                        Container(
                            color: Color.fromRGBO(243, 245, 248, 1),
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
                                  alignment: Alignment.centerLeft,
                              image: new ExactAssetImage(
                                'assets/cloud.png',
                                scale: 1.5
                              ),
                                      )
                                        ),
                                        )],
                                  )
                                  ),
                                  new Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0 ),
                                     child: Text('NaNuvem \n R\$ 1000 de hospedagem \n nos serviços da NaNuvem',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'LuckiestGuy',
                              color: palleteMediumPink,
                              fontSize: 12
                            ),
                            ),
                                    ),
                          Padding(
                           padding: EdgeInsets.fromLTRB(0, 0, 10, 0 ),
                          child:
                          FlatButton(
                          color: palletePink,
                          onPressed: () {}, 
                          child: Text(
                            'Comprar \n 600 XP',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: 'LuckiestGuy',),
                            )
                          )
                          )
                              ],
                            )
                          ),

                        SizedBox(height: 20),

                       Container(
                           color: Color.fromRGBO(243, 245, 248, 1),
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
                                  alignment: Alignment.centerLeft,
                              image: new ExactAssetImage(
                                'assets/curso.png',
                                scale: 1.0
                              ),
                                      )
                                        ),
                                        )],
                                  )
                                  ),
                                  new Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0 ),
                                     child: Text('PRIMECURSOS \n Descontos de até 50% \n nos certificados da \n PRIMECURSOS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'LuckiestGuy',
                              color: palleteMediumPink,
                              fontSize: 12
                            ),
                            ),
                                    ),
                          Padding(
                           padding: EdgeInsets.fromLTRB(0, 0, 20, 0 ),
                          child:
                          FlatButton(
                          color: palletePink,
                          onPressed: () {}, 
                          child: Text(
                            'Comprar \n 800 XP',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: 'LuckiestGuy',),
                            )
                          )
                          )
                              ],
                            )
                          ),

])))));
  }
}
