import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:pokemon/Controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        /*appBar: AppBar(
        title: Text('Food Network'),
        actions: <Widget>[
          Builder(builder: (BuildContext context) {
            return FlatButton(
              child: const Text('Sign out'),
              textColor: Theme.of(context).buttonColor,
              onPressed: () async {
                controller.signOut();
              },
            );
          })
        ],
      ),*/
        body: GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) {
        return SingleChildScrollView(
          child: Form(
            key: controller.formKey,
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
                        'Login Page',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.center,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(labelText: 'Correo'),
                      validator: (String? value) {
                        if (value!.isEmpty) return 'Favor de llenar el campo';
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
                        if (value!.isEmpty) return 'Favor de llenar el campo';
                        return null;
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      alignment: Alignment.center,
                      child: SignInButton(
                        Buttons.Email,
                        text: "Iniciar Sesión",
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
                        text: "Google",
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
