import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

import 'audience_page.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        iconTheme: IconThemeData(color: const Color(0xff00a4c2)),
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.help_outline),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 15),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: const Color(0xff00adb5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10, left: 30, right: 30, bottom: 15),
                        child: Text(
                            "El día 17 de junio del presente año en el cantón Quito, provincia de Pichincha el señor Juan Plaza se dirigía a su trabajo como de costumbre. De repente se encuentra por casualidad con el señor José Anteparra, con quien mantiene una breve conversación.",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: const TextStyle(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w300,
                                fontFamily: "Nunito",
                                fontStyle: FontStyle.normal,
                                fontSize: 12),
                            textAlign: TextAlign.center),
                      ),
                      Text("Art. 227",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 8,
                          style: const TextStyle(
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Nunito",
                              fontStyle: FontStyle.normal,
                              fontSize: 12),
                          textAlign: TextAlign.right),
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text("CASOS",
                    style: const TextStyle(
                        color: const Color(0xff00adb5),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Comfortaa",
                        fontStyle: FontStyle.normal,
                        fontSize: 20),
                    textAlign: TextAlign.left),
              ),
            ),
            Hero(
              tag: 'audience',
              child: Container(
                height: 300,
                width: 200,
                child: Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AudiencePage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: const Color(0xff00adb5),
                        image: DecorationImage(
                          image: AssetImage("assets/image1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, left: 30),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text("Tu Progreso",
                    style: const TextStyle(
                        color: const Color(0xffffba10),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Comfortaa",
                        fontStyle: FontStyle.normal,
                        fontSize: 20),
                    textAlign: TextAlign.left),
              ),
            ),
            Center(
                child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    child: FAProgressBar(
                      currentValue: 20,
                      size: 20,
                      borderRadius: 10,
                      progressColor: const Color(0xffffba10),
                    ))),
          ],
        ),
      ),
    );
  }
}
