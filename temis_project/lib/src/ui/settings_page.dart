import 'package:flutter/material.dart';

import 'info_page.dart';

class SettingsPage extends StatelessWidget {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                color: const Color(0xff00adb5),
                iconSize: 50,
                icon: const Icon(Icons.help_outline),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InfoPage()));
                },
              ),
              Text("INFORMACIÓN",
                  style: const TextStyle(
                      color: const Color(0xff00adb5),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Comfortaa",
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                  textAlign: TextAlign.left)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                color: const Color(0xff00adb5),
                iconSize: 50,
                icon: const Icon(Icons.sentiment_dissatisfied),
                onPressed: () {},
              ),
              Text("REINICIAR CASO",
                  style: const TextStyle(
                      color: const Color(0xff00adb5),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Comfortaa",
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                  textAlign: TextAlign.left)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                color: const Color(0xff00adb5),
                iconSize: 50,
                icon: const Icon(Icons.sentiment_satisfied),
                onPressed: () {},
              ),
              Text("SALVAR CASO",
                  style: const TextStyle(
                      color: const Color(0xff00adb5),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Comfortaa",
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                  textAlign: TextAlign.left)
            ],
          )
        ],
      ),
    );
  }
}
