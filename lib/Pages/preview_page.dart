import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreviewScreen extends StatefulWidget {
  PreviewScreen({Key? key}) : super(key: key);

  @override
  _PreviewScreenState createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    int puntos = Get.arguments['puntos'];
    String img = Get.arguments['img'];
    String nameimg = Get.arguments['nameimg'];
    String signo;
    int count;
    if (puntos == 1) {
      signo = "+";
      count = Get.arguments['count'] + 1;
    } else {
      signo = "";
      count = Get.arguments['count'];
    }
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body: Stack(
          children: [
            Positioned(
              top: height * 0.18,
              right: -30,
              child: Image.asset('images/pokefondow.png',
                  height: 200, fit: BoxFit.fitHeight),
            ),
            Positioned(
              bottom: 0,
              width: width,
              child: Container(
                  width: width,
                  height: height * 0.6,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white)),
            ),
            Positioned(
              top: (height * 0.18),
              left: (width / 2) - 100,
              child: CachedNetworkImage(
                imageUrl: img,
                height: 200,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
                top: (height * 0.48),
                //right: (width / 2) - 80,
                child: Text(
                  "Es " + nameimg + "!",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                )),
            Positioned(
                top: (height * 0.55),
                right: (width / 2) - 20,
                child: Text(
                  signo + puntos.toString() + "pts",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ))
          ],
        ));
  }
}
