import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginRegisterController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  late bool success;
  late String userEmail;

  void dipose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // Example code for registration.
  void register() async {
    final User? user = (await _auth.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    ))
        .user;
    if (user != null) {
      success = true;
      print('Registri Ok');
      Future.delayed(Duration(seconds: 2), () {
        Get.toNamed("foodpage");
      });
      userEmail = user.email ?? '';
    } else {
      success = false;
    }
  }
}
