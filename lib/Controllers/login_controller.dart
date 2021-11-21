import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

// Example code of how to sign in with email and password.
  // ignore: unused_element
  void signInWithEmailAndPassword() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ))
          .user!;
      Get.snackbar('Mensaje', 'Se ha ingresado sessión exitosamente');
      print('Ingreso Bien');
      Future.delayed(
        Duration(seconds: 2),
        () {
          Get.toNamed("/foodpage");
        },
      );
    } catch (e) {
      Get.snackbar('Fallo', 'No puede ingresar sessión',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void _signOut() async {
    await _auth.signOut();
  }

  void signOut() async {
    final User? user = await _auth.currentUser;
    if (user == null) {
      Get.snackbar('Mensaje', 'Nadie ha iniciado sesión',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    _signOut();
    final String uid = user.uid;
    Get.snackbar('Mensaje', uid + 'Se ha iniciado sesión Correctamente',
        snackPosition: SnackPosition.BOTTOM);
    Get.toNamed("/home");
  }

  //Example code of how to sign in with Google.
  void signInWithGoogle() async {
    try {
      UserCredential userCredential;

      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final googleAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      userCredential = await _auth.signInWithCredential(googleAuthCredential);

      final user = userCredential.user;
      Get.snackbar('Mensaje', 'Inicia sesión ${user!.uid} con Google');
      print('Ingreso Bien');
      Future.delayed(
        Duration(seconds: 2),
        () {
          Get.toNamed("/foodpage");
        },
      );
    } catch (e) {
      print(e);
      Get.snackbar('Fallo', 'No se pudo iniciar sesión con Google',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
