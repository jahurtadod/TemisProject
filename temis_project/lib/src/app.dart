import 'package:flutter/material.dart';
import 'package:temis_project/src/ui/homepage.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xfff5f5f5),
        accentColor: const Color(0xff00a4c2),
      ),
      home: Scaffold(
        body: Homepage(),
      ),
    );
  }
}
