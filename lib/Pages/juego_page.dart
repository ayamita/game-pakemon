import 'dart:convert';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JuegoScreen extends StatefulWidget {
  @override
  State<JuegoScreen> createState() => _JuegoScreenState();
}

class _JuegoScreenState extends State<JuegoScreen> {
  var pokeApi =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  List pokedex = [];
  @override
  void initState() {
    super.initState();
    if (mounted) {
      fetchPokemondata();
    }
  }

  void fetchPokemondata() {
    var url = Uri.https("raw.githubusercontent.com",
        "/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    // ignore: prefer_typing_uninitialized_variables
    var decodedJsonData;
    http.get(url).then((value) => {
          if (value.statusCode == 200)
            {
              decodedJsonData = jsonDecode(value.body),
              //print(decodedJsonData),
              pokedex = decodedJsonData['pokemon'],
              setState(() {})
            }
        });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var numRandom = new Random();
    int idRandom = numRandom.nextInt(151);
    int count = Get.arguments['count'];
    var img;
    var name;
    if (pokedex.length > 0) {
      img = pokedex[idRandom]['img'];
    } else {
      img = "https://webstockreview.net/images/dot-clipart-bullet-point-9.png";
    }
    //print(pokedex[75]['name']);
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
              top: 70,
              right: 20,
              child: Text(
                "¿Quien es ese pokemón?",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              )),
          Positioned(
            top: (height * 0.18),
            left: (width / 2) - 100,
            child: CachedNetworkImage(
              imageUrl: img,
              height: 200,
              fit: BoxFit.fitHeight,
              color: Colors.black,
            ),
          )

          //Positioned(top: 100, child: Text()),
        ],
      ),
    );
  }
}
