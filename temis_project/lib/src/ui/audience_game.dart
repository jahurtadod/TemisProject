import 'package:flutter/material.dart';
import 'package:temis_project/src/connection/database.dart';
import 'package:temis_project/src/ui/settings_page.dart';

class AudienceGame extends StatelessWidget {
  final PageController ctrl = PageController();
  final DataBase api = DataBase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        iconTheme: IconThemeData(color: const Color(0xff00a4c2)),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(top: 0, left: 30, right: 40, bottom: 5),
                child: Text("Inicia el proceso ...",
                    style: const TextStyle(
                        color: const Color(0xff00adb5),
                        fontFamily: "Comfortaa",
                        fontSize: 20),
                    textAlign: TextAlign.left),
              ),
              Chat(
                  "assets/imagen2.jpg",
                  "Juez",
                  "Damos comienzo a la presente audiencia, el propósito es formular cargos, señora secretaria, verifique la presencia de las partes procesales",
                  0xff00adb5),
              Chat("assets/imagen2.jpg", "Juez",
                  "Declaro instalada la presente audiencia", 0xff00adb5),
              Chat(
                  "assets/imagen2.jpg",
                  "Juez",
                  "¿Existen criterios sobre legalidad de la aprehensión?",
                  0xff00adb5),
              Chat(
                  "assets/imagen2.jpg",
                  "Juez",
                  "Siendo así, entonces declaro la legalidad de la aprehensión",
                  0xff00adb5),
              Chat("assets/imagen3.jpg", "Defensa", "No tengo nada que alegar",
                  0xff707070),
              Chat("assets/imagen4.jpg", "Fiscalia", "No tengo nada que alegar",
                  0xff243043),
              Chat(
                  "assets/imagen4.jpg",
                  "Fiscalia",
                  "Ahora procederé a señalar las pruebas que fundamenten mi acusación",
                  0xff243043),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Chat extends StatelessWidget {
  final String icon;
  final String rol;
  final String descripcion;
  final int color;

  Chat(this.icon, this.rol, this.descripcion, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 40),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Color(this.color)),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: const Color(0xff00adb5),
                        image: DecorationImage(
                          image: AssetImage(this.icon),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(this.rol,
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontFamily: "Comfortaa",
                            fontSize: 10),
                        textAlign: TextAlign.left),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 0, right: 15),
                  child: Text(this.descripcion,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Nunito",
                          fontStyle: FontStyle.normal,
                          fontSize: 14),
                      textAlign: TextAlign.left),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
