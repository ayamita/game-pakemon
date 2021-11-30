import 'package:flutter/material.dart';
import 'package:pokemon/Controllers/register_login_controller.dart';

class titulo extends StatelessWidget {
  const titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        'Registrarse',
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

  final LoginRegisterController controller;

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

  final LoginRegisterController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.passwordController,
      decoration: const InputDecoration(labelText: 'Contraseña'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Favor de llenar el campo';
        }
        return null;
      },
      obscureText: true,
    );
  }
}

class btnRegistrar extends StatelessWidget {
  const btnRegistrar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginRegisterController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0),
      alignment: Alignment.center,
      child: RaisedButton(
        child: Text('Registrar'),
        onPressed: () async {
          controller.register();
        },
      ),
    );
  }
}
