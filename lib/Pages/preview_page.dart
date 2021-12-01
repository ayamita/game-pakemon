import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon/Widgets/preview_widgets.dart';

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
    late int puntos = Get.arguments['puntos'];
    late String img = Get.arguments['img'];
    late int puntaje = Get.arguments['puntaje'];
    late String nameimg = Get.arguments['nameimg'];
    String signo;
    int count;
    if (puntos == 1) {
      signo = "+";
    } else {
      signo = "";
    }
    count = Get.arguments['count'] + 1;
    print("count:" + count.toString());
    return Preview(
        height: height,
        width: width,
        img: img,
        nameimg: nameimg,
        signo: signo,
        puntos: puntos,
        puntaje: puntaje,
        count: count);
  }
}

class Preview extends StatelessWidget {
  const Preview({
    Key? key,
    required this.height,
    required this.width,
    required this.img,
    required this.nameimg,
    required this.signo,
    required this.puntos,
    required this.count,
    required this.puntaje,
  }) : super(key: key);

  final double height;
  final double width;
  final String img;
  final String nameimg;
  final String signo;
  final int count;
  final int puntos;
  final int puntaje;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[900],
        body: Stack(
          children: [
            fondo(height: height),
            borde(width: width, height: height),
            txtImgPokemon(height: height, width: width, img: img),
            txtPokemon(height: height, width: width, nameimg: nameimg),
            txtPuntos(
                height: height, width: width, signo: signo, puntos: puntos),
            btnSigiente(
                height: height, width: width, count: count, puntaje: puntaje)
          ],
        ));
  }
}
