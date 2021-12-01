import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon/Controllers/login_controller.dart';
import 'package:pokemon/Widgets/login_widgets.dart';

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
          backgroundColor: Colors.red[900],
        ),
        body: Login(productKey: _productKey, controller: controller)));
  }
}

class Login extends StatelessWidget {
  const Login({
    Key? key,
    required GlobalKey<FormState> productKey,
    required this.controller,
  })  : _productKey = productKey,
        super(key: key);

  final GlobalKey<FormState> _productKey;
  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
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
                    titulo(),
                    const SizedBox(
                      height: 50,
                    ),
                    txtCorreo(controller: controller),
                    txtPass(controller: controller),
                    btnLogin(controller: controller),
                    btngoogle(controller: controller)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
