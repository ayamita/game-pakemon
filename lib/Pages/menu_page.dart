import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon/Controllers/login_controller.dart';
import 'package:pokemon/Widgets/menu_widgets.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    var colorbutton = Colors.red[900];
    return (menu(controller: controller, colorbutton: colorbutton));
  }
}

class menu extends StatelessWidget {
  const menu({
    Key? key,
    required this.controller,
    required this.colorbutton,
  }) : super(key: key);

  final LoginController controller;
  final Color? colorbutton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFFB71C1C),
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
        ),
        body: Container(
            child: Center(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            btnJugar(colorbutton: colorbutton),
            const SizedBox(
              height: 50,
            ),
            btnPokedex(colorbutton: colorbutton),
            const SizedBox(
              height: 50,
            ),
            btnCalificar(colorbutton: colorbutton),
            const SizedBox(
              height: 50,
            ),
            btnComentarios(colorbutton: colorbutton),
          ],
        ))));
  }
}
