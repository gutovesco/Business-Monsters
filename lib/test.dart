import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class First extends StatefulWidget {
  @override
  _First createState() => _First();
}
class _First extends State<First> {

  final List<String> grade = ["Ensino basico", "Ensino Médio", 'Ensino Superior'];
  String selectedgrade = "Ensino Superior";

  final List<String> conhecimento = ["Finanças", "Comercial", 'Tecnologia'];
  String selectedconhecimento = "Tecnologia";

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
                  slimeEnabled: false,
                  color: const Color(0xff0ffa61),
                  topCardHeight: 199,
                  bottomCardHeight: 450,
                  width: 400,
                  topCardWidget: topCardWidget((snapshot.data)
                      ? 'Informações Pessoais'
                      : 'Informações Pessoais'),
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
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))),
        ]);
  }
  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget() {
    return Scaffold(
      backgroundColor: Color(0xff0ffa61),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color:Color(0xff0ffa61),
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
                          labelText: "Nome",
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  ),
                ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 2),
                          ),
                          labelText: "E-mail",
                          labelStyle: TextStyle(
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
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  )
                ),

                DropdownButton<String>(
        iconSize: 24,
        elevation: 6,
        style: TextStyle(color: Colors.white),
        value: selectedgrade,
        onChanged: (value) {
          setState(() {
            selectedgrade = value;
          });
        },
        items: grade.map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem(
            child: Text(value),
            value: value,
          );
        }).toList(),
      ),

       DropdownButton<String>(
        iconSize: 24,
        elevation: 6,
        style: TextStyle(color: Colors.white),
        value: selectedconhecimento,
        onChanged: (value) {
          setState(() {
            selectedconhecimento = value;
          });
        },
        items: conhecimento.map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem(
            child: Text(value),
            value: value,
          );
        }).toList(),
      ),

      SizedBox(height: 40),
      GestureDetector(
                      onTap: () {
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
                                  color: Color(0xFF4D70A6).withOpacity(0.2),
                                  blurRadius: 16),
                              BoxShadow(
                                  offset: Offset(-10, -10),
                                  color: Color.fromARGB(170, 255, 255, 255),
                                  blurRadius: 10),
                            ]),
                        child: Text(
                          "Submeter",
                          style: TextStyle(
                              color: Color.fromRGBO(78, 165, 4, 100),
                              fontSize: 16),
                        ),
                      ),
                    ),

                    ])))));}}