import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:get/get.dart';

class titulo extends StatelessWidget {
  const titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        '¿Quién es ese Pokemón?',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Color(0xFFFBC02D)),
      ),
      alignment: Alignment.center,
    );
  }
}

class imgPokemon extends StatelessWidget {
  const imgPokemon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Image.asset(
        'images/logo.png',
        height: 350.00,
        width: 350.00,
      )),
    );
  }
}

class btnRegistrar extends StatelessWidget {
  const btnRegistrar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignInButtonBuilder(
        icon: Icons.person_add,
        backgroundColor: Colors.blueAccent,
        text: 'Registrar',
        onPressed: () => Get.toNamed("/registro"),
      ),
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
    );
  }
}

class btnGoogle extends StatelessWidget {
  const btnGoogle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignInButtonBuilder(
        icon: Icons.verified_user,
        backgroundColor: Colors.orange,
        text: 'Iniciar Sessión',
        onPressed: () => Get.toNamed("/loginpage"),
      ),
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
    );
  }
}
