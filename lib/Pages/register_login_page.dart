import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon/Controllers/register_login_controller.dart';
import 'package:pokemon/Widgets/registrar_widgets.dart';

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
        body: registrar(controller: controller));
  }
}

class registrar extends StatelessWidget {
  const registrar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginRegisterController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginRegisterController>(
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
                        titulo(),
                        txtCorreo(controller: controller),
                        txtPass(controller: controller),
                        btnRegistrar(controller: controller),
                      ],
                    ))));
      },
    );
  }
}
