import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'Routes/my_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //permite ejecutar la clase
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    navigatorKey: Get.key,
    getPages: routes(),
  ));
}
