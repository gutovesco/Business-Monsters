import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';


class SlimyCardPage2 extends StatefulWidget {
  @override
  _SlimyCardPage2 createState() => _SlimyCardPage2();
}
class _SlimyCardPage2 extends State<SlimyCardPage2> {
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
                  color: const Color(0xff0ffa61),
                  topCardHeight: 199,
                  bottomCardHeight: 420,
                  width: 400,
                  topCardWidget: topCardWidget((snapshot.data)
                      ? 'Informações do Negócio'
                      : 'Informações do Negócio'),
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
                          labelText: "Nome da Empresa/Projeto",
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
                          labelText: "CNPJ",
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
                          labelText: "Site",
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  )
                ),

                    ])))));}}