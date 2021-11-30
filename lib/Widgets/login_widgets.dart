import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:pokemon/Controllers/login_controller.dart';

class titulo extends StatelessWidget {
  const titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        'Iniciar Sesión',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
      alignment: Alignment.center,
    );
  }
}

class txtCorreo extends StatelessWidget {
  const txtCorreo({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.emailController,
      decoration: const InputDecoration(labelText: 'Correo'),
      validator: (String? value) {
        if (value!.isEmpty) return 'Favor de llenar el campo';
        return null;
      },
    );
  }
}

class txtPass extends StatelessWidget {
  const txtPass({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.passwordController,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      decoration: const InputDecoration(labelText: 'Contraseña'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Favor de llenar el campo';
        }
        return null;
      },
    );
  }
}

class btnLogin extends StatelessWidget {
  const btnLogin({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0),
      alignment: Alignment.center,
      child: SignInButton(
        Buttons.Email,
        text: "Ingresar",
        onPressed: () async {
          controller.signInWithEmailAndPassword();
        },
      ),
    );
  }
}

class btngoogle extends StatelessWidget {
  const btngoogle({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0),
      alignment: Alignment.center,
      child: SignInButton(
        Buttons.GoogleDark,
        text: "Ingresar con Google",
        onPressed: () async {
          controller.signInWithGoogle();
        },
      ),
    );
  }
}
