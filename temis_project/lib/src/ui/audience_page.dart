import 'package:flutter/material.dart';

class AudiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        iconTheme: IconThemeData(color: const Color(0xff00a4c2)),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Hero(
                  tag: 'audience',
                  child: Container(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      decoration: BoxDecoration(
                        color: const Color(0xff00adb5),
                        image: DecorationImage(
                          image: AssetImage("assets/image1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 70, left: 0),
                    child: Container(
                      width: 300,
                      height: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: const Color(0xff00adb5)),
                      child: Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Text("Formulación de cargos",
                              style: const TextStyle(
                                  color: const Color(0xffffffff),
                                  //fontWeight: FontWeight.w400,
                                  fontFamily: "Comfortaa",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24.0),
                              textAlign: TextAlign.left),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Audiencia 1",
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Comfortaa",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Text(
                              "El día 17 de junio del presente año en el cantón Quito, provincia de Pichincha el señor Juan Plaza se dirigía a su trabajo como de costumbre. De repente se encuentra por casualidad con el señor José Anteparra, con quien mantiene una breve conversación . El señor José Anteparra se retira del lugar, alejándose en dirección a la calle mariana de Jesús, no habían pasado mas de 5 minutos cuando es detenido por el oficial Juan Mejía",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 8,
                              style: const TextStyle(
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Nunito",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12),
                              textAlign: TextAlign.left),
                        )
                      ]),
                    )),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 15),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text("Selecciona un rol:",
                      style: const TextStyle(
                          color: const Color(0xff333333),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Comfortaa",
                          fontStyle: FontStyle.normal,
                          fontSize: 18),
                      textAlign: TextAlign.left)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: const Color(0xff243043),
                  ),
                  width: 90,
                  height: 90,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AudiencePage()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: const Color(0xff00adb5),
                            image: DecorationImage(
                              image: AssetImage("assets/imagen2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Juez",
                            style: const TextStyle(
                                color: const Color(0xffffffff),
                                fontFamily: "Comfortaa",
                                fontStyle: FontStyle.normal,
                                fontSize: 15),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: const Color(0xff243043),
                  ),
                  width: 90,
                  height: 90,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AudiencePage()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: const Color(0xff00adb5),
                            image: DecorationImage(
                              image: AssetImage("assets/imagen3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Juez",
                            style: const TextStyle(
                                color: const Color(0xffffffff),
                                fontFamily: "Comfortaa",
                                fontStyle: FontStyle.normal,
                                fontSize: 15),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: const Color(0xff243043),
                  ),
                  width: 90,
                  height: 90,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AudiencePage()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: const Color(0xff00adb5),
                            image: DecorationImage(
                              image: AssetImage("assets/imagen4.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Juez",
                            style: const TextStyle(
                                color: const Color(0xffffffff),
                                fontFamily: "Comfortaa",
                                fontStyle: FontStyle.normal,
                                fontSize: 15),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
