import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        iconTheme: IconThemeData(color: const Color(0xff00a4c2)),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 0, left: 30, right: 30, bottom: 5),
            child: Text("INFORMACIÓN",
                style: const TextStyle(
                    color: const Color(0xff00adb5),
                    fontFamily: "Comfortaa",
                    fontSize: 20),
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 5),
            child: Text(
                "La demanda de la razón puede llegar a ser una gran pasión pero la vida cambia ",
                style: const TextStyle(
                    color: const Color(0xff243043),
                    fontFamily: "Comfortaa",
                    fontSize: 15),
                textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 5),
            child: Text("ASCENDERE",
                style: const TextStyle(
                    color: const Color(0xff00adb5),
                    fontFamily: "Comfortaa",
                    fontSize: 20),
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 5),
            child: Text(
                "Evoca la consigna “Recuerda Superarte Siempre”, para reafirmar el compromiso de la UTPL de contar con docentes que inspiran a sus alumnos, innovadores, vinculados con la práctica de su profesión y que se encuentren a la vanguardia de la disciplina.",
                style: const TextStyle(
                    color: const Color(0xff243043),
                    fontFamily: "Comfortaa",
                    fontSize: 15),
                textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 5),
            child: Text("InDevelopment",
                style: const TextStyle(
                    color: const Color(0xff00adb5),
                    fontFamily: "Comfortaa",
                    fontSize: 20),
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 5),
            child: Text(
                "La demanda de la razón puede llegar a ser una gran pasión pero la vida cambia ",
                style: const TextStyle(
                    color: const Color(0xff243043),
                    fontFamily: "Comfortaa",
                    fontSize: 15),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
