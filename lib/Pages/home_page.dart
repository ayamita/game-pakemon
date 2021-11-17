import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:get/get.dart';

class HomPage extends StatefulWidget {
  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFB71C1C),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xFFF44336),
                Color(0xFFD32F2F),
                Color(0xFFB71C1C),
                Color(0xFFD32F2F),
                Color(0xFFF44336),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
            )),
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      child: const Text(
                        '¿Quién es ese Pokemón?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Color(0xFFFBC02D)),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      child: Center(
                          child: Image.asset(
                        'images/logo.png',
                        height: 350.00,
                        width: 350.00,
                      )),
                    ),
                    Container(
                      child: SignInButtonBuilder(
                        icon: Icons.person_add,
                        backgroundColor: Colors.blueAccent,
                        text: 'Registrar',
                        onPressed: () => Get.toNamed("/registro"),
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
            )));
  }
}
