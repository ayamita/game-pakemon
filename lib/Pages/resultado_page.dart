import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultadoPage extends StatefulWidget {
  const ResultadoPage({Key? key}) : super(key: key);

  @override
  _ResultadoPageState createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    int count = Get.arguments['count'];
    int puntaje = Get.arguments['puntaje'];
    int fallos = count - puntaje;
    String img = "http://www.serebii.net/pokemongo/pokemon/132.png";
    if (puntaje <= 5) {
      img = "https://www.serebii.net/pokemongo/pokemon/129.png";
    }
    if (puntaje > 5 && puntaje <= 7) {
      img = "https://www.serebii.net/pokemongo/pokemon/068.png";
    }
    if (puntaje > 7 && puntaje <= 10) {
      img = "https://www.serebii.net/pokemongo/pokemon/150.png";
    }

    return Scaffold(
      backgroundColor: Colors.red[900],
      body: Stack(children: [
        Positioned(
          bottom: 0,
          width: width,
          child: Container(
              width: width,
              height: height * 0.30,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white)),
        ),
        Positioned(
            top: (height * 0.15),
            left: (width / 6),
            right: (width / 6),
            child: const Text(
              "Total de Aciertos:",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            )),
        Positioned(
            top: (height * 0.22),
            left: (width / 3),
            right: (width / 3),
            child: Text(
              puntaje.toString() + "pts",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            )),
        Positioned(
            top: (height * 0.32),
            left: (width / 6),
            right: (width / 6),
            child: const Text(
              "Total de Fallos:",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            )),
        Positioned(
            top: (height * 0.39),
            left: (width / 3),
            right: (width / 3),
            child: Text(
              fallos.toString() + "pts",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            )),
        Positioned(
          top: (height * 0.45),
          left: (width / 4),
          right: (width / 4),
          child: CachedNetworkImage(
            imageUrl: img,
            height: 150,
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
          top: (height * 0.85),
          left: (width / 2) - 170,
          child: Container(
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75))
                ],
              ),
              child: MaterialButton(
                height: 58,
                minWidth: 340,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {
                  Get.toNamed("/menu");
                },
                child: const Text(
                  "Regresar al Menú",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                color: Colors.red[900],
              )),
        ),
        Positioned(
          top: (height * 0.75),
          left: (width / 2) - 170,
          child: Container(
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75))
                ],
              ),
              child: MaterialButton(
                height: 58,
                minWidth: 340,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {
                  count = 0;
                  puntaje = 0;
                  Get.toNamed("/juego", arguments: {
                    'puntaje': puntaje,
                    'count': count,
                  });
                },
                child: const Text(
                  "Jugar de Nuevo",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                color: Colors.red[900],
              )),
        ),
      ]),
    );
  }
}
