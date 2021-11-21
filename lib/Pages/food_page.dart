import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon/Controllers/login_controller.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FoodPage extends StatefulWidget {
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
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
            Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                ),
                child: MaterialButton(
                  height: 58,
                  minWidth: 340,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12)),
                  onPressed: () {
                    Get.toNamed("/pokedex");
                  },
                  child: Text(
                    "Jugar",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFFB71C1C),
                )),
            const SizedBox(
              height: 50,
            ),
            Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                ),
                child: MaterialButton(
                  height: 58,
                  minWidth: 340,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12)),
                  onPressed: () {},
                  child: Text(
                    "Calificar",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFFB71C1C),
                )),
            const SizedBox(
              height: 50,
            ),
            Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                ),
                child: MaterialButton(
                  height: 58,
                  minWidth: 340,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12)),
                  onPressed: () {},
                  child: Text(
                    "Comentarios",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFFB71C1C),
                )),
          ],
        )))));
  }
}
