import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:get/get.dart';

class HomPage extends StatelessWidget {
  const HomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 100,
        ),
        Container(
          child: SignInButtonBuilder(
            icon: Icons.person_add,
            backgroundColor: Colors.blueAccent,
            text: 'Registrar',
            onPressed: () => Get.toNamed("/regitsration"),
          ),
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
        ),
        Container(
          child: SignInButtonBuilder(
            icon: Icons.verified_user,
            backgroundColor: Colors.orange,
            text: 'Iniciar Sessión',
            onPressed: () => Get.toNamed("/loginpage"),
          ),
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
        )
      ]),
    );
  }
}
