import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:pokemon/Controllers/login_controller.dart';
import 'package:pokemon/Controllers/register_login_controller.dart';

class RegisterLoginPage extends StatefulWidget {
  @override
  State<RegisterLoginPage> createState() => _RegisterLoginPageState();
}

class _RegisterLoginPageState extends State<RegisterLoginPage> {
  final controller = Get.put(LoginRegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFB71C1C),
        ),
        body: GetBuilder<LoginRegisterController>(
          builder: (_) {
            return Form(
                child: Card(
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            Container(
                              child: const Text(
                                'Registrarse',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              alignment: Alignment.center,
                            ),
                            TextFormField(
                              controller: controller.emailController,
                              decoration:
                                  const InputDecoration(labelText: 'Correo'),
                              validator: (String? value) {
                                if (value!.isEmpty)
                                  return 'Favor de llenar el campo';
                                return null;
                              },
                            ),
                            TextFormField(
                              controller: controller.passwordController,
                              decoration: const InputDecoration(
                                  labelText: 'Contraseña'),
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Favor de llenar el campo';
                                }
                                return null;
                              },
                              obscureText: true,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 16.0),
                              alignment: Alignment.center,
                              child: RaisedButton(
                                child: Text('Registrar'),
                                onPressed: () async {
                                  _.register();
                                },
                              ),
                            ),
                          ],
                        ))));
          },
        ));
  }
}
