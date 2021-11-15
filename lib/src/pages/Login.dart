import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key? key, required this.title}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/logo.png',
              height: 300.00,
              width: 300.00,
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: _emailController,
              decoration:
                  InputDecoration(labelText: 'Email', icon: Icon(Icons.email)),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  labelText: 'Password', icon: Icon(Icons.vpn_key)),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
