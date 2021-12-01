import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class imgFondo extends StatelessWidget {
  const imgFondo({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: height * 0.18,
      right: -30,
      child: Image.asset('images/pokefondow.png',
          height: 200, fit: BoxFit.fitHeight),
    );
  }
}

class bordes extends StatelessWidget {
  const bordes({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      width: width,
      child: Container(
          width: width,
          height: height * 0.6,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white)),
    );
  }
}

class titulo extends StatelessWidget {
  const titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        top: 70,
        right: 20,
        child: Text(
          "¿Quíen es ese pokemón?",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ));
  }
}

class imagenPokemon extends StatelessWidget {
  const imagenPokemon({
    Key? key,
    required this.height,
    required this.width,
    required this.count,
    required this.img,
  }) : super(key: key);

  final double height;
  final double width;
  final String img;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (height * 0.18),
      left: (width / 2) - 100,
      child: CachedNetworkImage(
        imageUrl: img,
        height: 200,
        fit: BoxFit.fitHeight,
        color: Colors.black,
      ),
    );
  }
}

class namepokemon extends StatelessWidget {
  const namepokemon(
      {Key? key,
      required this.height,
      required this.width,
      required this.count,
      required this.name,
      required this.nameimg,
      required this.img,
      required this.puntaje})
      : super(key: key);

  final int count;
  final int puntaje;
  final double height;
  final double width;
  final String name;
  final String nameimg;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (height * 0.50),
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onPressed: () {
              int puntos = 0;
              int puntajes;
              int contador;
              if (nameimg == name) {
                puntos = 1;
                puntajes = (puntaje + 1);
              } else {
                puntajes = puntaje;
              }
              print("puntaje:" + puntajes.toString());
              Get.toNamed("/preview", arguments: {
                'count': count,
                'puntos': puntos,
                'img': img,
                'nameimg': nameimg,
                'puntaje': puntajes,
              });
            },
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            color: Colors.red[900],
          )),
    );
  }
}

class namepokemon2 extends StatelessWidget {
  const namepokemon2(
      {Key? key,
      required this.height,
      required this.width,
      required this.count,
      required this.name2,
      required this.nameimg,
      required this.img,
      required this.puntaje})
      : super(key: key);

  final int count;
  final int puntaje;
  final double height;
  final double width;
  final String name2;
  final String nameimg;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (height * 0.60),
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onPressed: () {
              int puntos = 0;
              int puntajes;
              int contador;
              if (nameimg == name2) {
                puntos = 1;
                puntajes = (puntaje + 1);
              } else {
                puntajes = puntaje;
              }
              print("puntaje:" + puntajes.toString());
              Get.toNamed("/preview", arguments: {
                'count': count,
                'puntos': puntos,
                'img': img,
                'nameimg': nameimg,
                'puntaje': puntajes,
              });
            },
            child: Text(
              name2,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            color: Colors.red[900],
          )),
    );
  }
}

class namepokemon3 extends StatelessWidget {
  const namepokemon3({
    Key? key,
    required this.height,
    required this.width,
    required this.count,
    required this.name3,
    required this.nameimg,
    required this.img,
    required this.puntaje,
  }) : super(key: key);

  final int puntaje;
  final int count;
  final double height;
  final double width;
  final String name3;
  final String nameimg;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (height * 0.70),
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onPressed: () {
              int puntos = 0;
              int puntajes;
              int contador;
              if (nameimg == name3) {
                puntos = 1;
                puntajes = (puntaje + 1);
              } else {
                puntajes = puntaje;
              }
              print("puntaje:" + puntajes.toString());
              Get.toNamed("/preview", arguments: {
                'count': count,
                'puntos': puntos,
                'img': img,
                'nameimg': nameimg,
                'puntaje': puntajes,
              });
            },
            child: Text(
              name3,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            color: Colors.red[900],
          )),
    );
  }
}

class namepokemon4 extends StatelessWidget {
  const namepokemon4({
    Key? key,
    required this.height,
    required this.width,
    required this.count,
    required this.name4,
    required this.nameimg,
    required this.img,
    required this.puntaje,
  }) : super(key: key);

  final int puntaje;
  final int count;
  final double height;
  final double width;
  final String name4;
  final String nameimg;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (height * 0.80),
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onPressed: () {
              int puntos = 0;
              int puntajes;
              int contador;
              if (nameimg == name4) {
                puntos = 1;
                puntajes = (puntaje + 1);
              } else {
                puntajes = puntaje;
              }
              print("puntaje:" + puntajes.toString());
              Get.toNamed("/preview", arguments: {
                'count': count,
                'puntos': puntos,
                'img': img,
                'nameimg': nameimg,
                'puntaje': puntajes,
              });
            },
            child: Text(
              name4,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            color: Colors.red[900],
          )),
    );
  }
}
