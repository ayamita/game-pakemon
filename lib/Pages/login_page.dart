import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:pokemon/Controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.put(LoginController());

  GlobalKey<FormState> _productKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFB71C1C),
        ),
        body: GetBuilder<LoginController>(
          init: LoginController(),
          builder: (_) {
            return SingleChildScrollView(
              child: Form(
                key: _productKey,
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
                            'Iniciar Sesión',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          alignment: Alignment.center,
                        ),
                        const SizedBox(
                          height: 50,
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
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          decoration:
                              const InputDecoration(labelText: 'Contraseña'),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Favor de llenar el campo';
                            }
                            return null;
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 16.0),
                          alignment: Alignment.center,
                          child: SignInButton(
                            Buttons.Email,
                            text: "Ingresar",
                            onPressed: () async {
                              _.signInWithEmailAndPassword();
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 16.0),
                          alignment: Alignment.center,
                          child: SignInButton(
                            Buttons.GoogleDark,
                            text: "Ingresar con Google",
                            onPressed: () async {
                              _.signInWithGoogle();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        )));
  }
}
