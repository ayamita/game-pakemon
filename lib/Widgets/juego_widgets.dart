import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class namepokemon4 extends StatelessWidget {
  const namepokemon4({
    Key? key,
    required this.height,
    required this.width,
    required this.name4,
  }) : super(key: key);

  final double height;
  final double width;
  final String name4;

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
              //Get.toNamed("/pokedex");
              //Get.toNamed("/juego");
            },
            child: Text(
              name4,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            color: Colors.redAccent,
          )),
    );
  }
}

class namepokemon3 extends StatelessWidget {
  const namepokemon3({
    Key? key,
    required this.height,
    required this.width,
    required this.name3,
  }) : super(key: key);

  final double height;
  final double width;
  final String name3;

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
              //Get.toNamed("/pokedex");
              //Get.toNamed("/juego");
            },
            child: Text(
              name3,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            color: Colors.redAccent,
          )),
    );
  }
}

class namepokemon2 extends StatelessWidget {
  const namepokemon2({
    Key? key,
    required this.height,
    required this.width,
    required this.name2,
  }) : super(key: key);

  final double height;
  final double width;
  final String name2;

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
              //Get.toNamed("/pokedex");
              //Get.toNamed("/juego");
            },
            child: Text(
              name2,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            color: Colors.redAccent,
          )),
    );
  }
}

class namepokemon extends StatelessWidget {
  const namepokemon({
    Key? key,
    required this.height,
    required this.width,
    required this.name,
  }) : super(key: key);

  final double height;
  final double width;
  final String name;

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
              //Get.toNamed("/pokedex");
              //Get.toNamed("/juego");
            },
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            color: Colors.redAccent,
          )),
    );
  }
}

class imagenPokemon extends StatelessWidget {
  const imagenPokemon({
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
        color: Colors.black,
      ),
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
