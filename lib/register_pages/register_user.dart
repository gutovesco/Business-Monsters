import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:Business_Monsters/register_pages/signup-complete.dart';

Color palleteBlue = Color(0xff010a43);
Color palleteLightPink = Color(0xffffc2c2);
Color palleteMediumPink = Color(0xffff9d9d);
Color palletePink = Color(0xffff2e63);

class SlimyCardPage2 extends StatefulWidget {
  @override
  _SlimyCardPage2 createState() => _SlimyCardPage2();
}

class _SlimyCardPage2 extends State<SlimyCardPage2> {

  final List<String> subjects = ["Tecnologia", "Comércio", "Finança", "Educação", "Ramo"];
  String selectedSubject = "Ramo";

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F3F6),
        body: StreamBuilder(
            // This streamBuilder reads the real-time status of SlimyCard.
            initialData: false,
            stream: slimyCard.stream, //Stream of SlimyCard
            builder: ((BuildContext context, AsyncSnapshot snapshot) {
              return ListView(padding: EdgeInsets.zero, children: <Widget>[
                SlimyCard(
                  slimeEnabled: true,
                  color: palleteMediumPink,
                  topCardHeight: 199,
                  bottomCardHeight: 420,
                  width: 400,
                  topCardWidget: topCardWidget((snapshot.data)
                      ? 'Informações da Conta'
                      : 'Informações da Conta'),
                  bottomCardWidget: bottomCardWidget(),
                )
              ]);
            })));
  }

  // This widget will be passed as Top Card's Widget.
  Widget topCardWidget(String data) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Text(data,
                  style: TextStyle(
                    fontFamily: 'LuckiestGuy',
                    letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))),
        ]);
  }

  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget() {
    return Scaffold(
      backgroundColor: palleteMediumPink,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: palleteMediumPink,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 2),
                          ),
                          labelText: "Usuário",
                          labelStyle: TextStyle(
                            fontFamily: 'LuckiestGuy',
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  ),
                ),
                TextField(
                      style: TextStyle(color: Colors.white, fontFamily: 'LuckiestGuy',),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 2),
                          ),
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                            fontFamily: 'LuckiestGuy',
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  )
                ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 2),
                          ),
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            fontFamily: 'LuckiestGuy',
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  )
                ),
                TextField(
                      style: TextStyle(color: Colors.white, fontFamily: 'LuckiestGuy',),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 2),
                          ),
                          labelText: "Confirmar Senha",
                          labelStyle: TextStyle(
                            fontFamily: 'LuckiestGuy',
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  )
                ),
                SizedBox(height: 10),
        DropdownButton<String>(
          focusColor: palleteMediumPink,
        iconSize: 24,
        elevation: 6,
        style: TextStyle(color: palleteLightPink, fontFamily: 'LuckiestGuy',),
        value: selectedSubject,
        onChanged: (value) {
          setState(() {
            selectedSubject = value;
          });
        },
        items: subjects.map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem(
            child: Text(value),
            value: value,
          );
        }).toList(),
      ),
                
                 SizedBox(height: 20),
      GestureDetector(
                     onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) => SignupComplete()));
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        height: ScreenUtil().setHeight(120),
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F3F6),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(10, 10),
                                  color: Color(0xFF4D70A6).withOpacity(0),
                                  blurRadius: 16),
                              BoxShadow(
                                  offset: Offset(-10, -10),
                                  color: Color.fromARGB(170, 255, 255, 255).withOpacity(0),
                                  blurRadius: 10),
                            ]),
                        child: Text(
                          "Submeter",
                          style: TextStyle(
                            fontFamily: 'LuckiestGuy',
                              color: palleteMediumPink,
                              fontSize: 16),
                        ),
                      ),
                    ),

                    ])))));}
}