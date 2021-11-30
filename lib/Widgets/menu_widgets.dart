import 'package:flutter/material.dart';
import 'package:get/get.dart';

class btnJugar extends StatelessWidget {
  const btnJugar({
    Key? key,
    required this.colorbutton,
  }) : super(key: key);

  final Color? colorbutton;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            int count = 1;
            Get.toNamed("/juego", arguments: {'count': count});
          },
          child: const Text(
            "Jugar",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          color: colorbutton,
        ));
  }
}

class btnPokedex extends StatelessWidget {
  const btnPokedex({
    Key? key,
    required this.colorbutton,
  }) : super(key: key);

  final Color? colorbutton;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Get.toNamed("/pokedex");
            //Get.toNamed("/juego");
          },
          child: const Text(
            "Pokedex",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          color: colorbutton,
        ));
  }
}

class btnCalificar extends StatelessWidget {
  const btnCalificar({
    Key? key,
    required this.colorbutton,
  }) : super(key: key);

  final Color? colorbutton;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              borderRadius: new BorderRadius.circular(12)),
          onPressed: () {},
          child: const Text(
            "Calificar",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          color: colorbutton,
        ));
  }
}

class btnComentarios extends StatelessWidget {
  const btnComentarios({
    Key? key,
    required this.colorbutton,
  }) : super(key: key);

  final Color? colorbutton;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              borderRadius: new BorderRadius.circular(12)),
          onPressed: () {},
          child: const Text(
            "Comentarios",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          color: colorbutton,
        ));
  }
}
