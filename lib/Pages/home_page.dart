import 'package:flutter/material.dart';
import 'package:pokemon/Widgets/home_widgets.dart';

class HomPage extends StatefulWidget {
  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFB71C1C),
        body: Container(
            decoration: const BoxDecoration(
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
                  children: const [
                    SizedBox(
                      height: 100,
                    ),
                    titulo(),
                    imgPokemon(),
                    btnRegistrar(),
                    btnGoogle()
                  ]),
            )));
  }
}
