import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class fondo extends StatelessWidget {
  const fondo({
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

class borde extends StatelessWidget {
  const borde({
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
          height: height * 0.20,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white)),
    );
  }
}

class txtImgPokemon extends StatelessWidget {
  const txtImgPokemon({
    Key? key,
    required this.height,
    required this.width,
    required this.img,
  }) : super(key: key);

  final double height;
  final double width;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (height * 0.18),
      left: (width / 2) - 100,
      child: CachedNetworkImage(
        imageUrl: img,
        height: 200,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

class txtPokemon extends StatelessWidget {
  const txtPokemon({
    Key? key,
    required this.height,
    required this.width,
    required this.nameimg,
  }) : super(key: key);

  final double height;
  final double width;
  final String nameimg;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: (height * 0.48),
        left: (width / 6),
        right: (width / 6),
        child: Center(
            child: Text(
          "Es " + nameimg + "!",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        )));
  }
}

class txtPuntos extends StatelessWidget {
  const txtPuntos({
    Key? key,
    required this.height,
    required this.width,
    required this.signo,
    required this.puntos,
  }) : super(key: key);

  final double height;
  final double width;
  final String signo;
  final int puntos;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: (height * 0.55),
        left: (width / 3),
        right: (width / 3),
        child: Text(
          signo + puntos.toString() + "pts",
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ));
  }
}

class btnSigiente extends StatelessWidget {
  const btnSigiente({
    Key? key,
    required this.height,
    required this.width,
    required this.puntaje,
    required this.count,
  }) : super(key: key);

  final double height;
  final double width;
  final int puntaje;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onPressed: () {
              if (count == 10) {
                Get.toNamed("/resultado", arguments: {
                  'puntaje': puntaje,
                  'count': count,
                });
              } else {
                Get.toNamed("/juego", arguments: {
                  'puntaje': puntaje,
                  'count': count,
                });
              }
            },
            child: const Text(
              "Siguiente",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            color: Colors.red[900],
          )),
    );
  }
}
