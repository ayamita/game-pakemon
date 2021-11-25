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

  void pokemonRandom() {}

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    int count = Get.arguments['count'];

    var numRandom = new Random();
    int idRandom = numRandom.nextInt(151);
    int idRandom2 = numRandom.nextInt(151);
    int idRandom3 = numRandom.nextInt(151);
    int idRandom4 = numRandom.nextInt(151);

    var pokeRandom = [idRandom3, idRandom, idRandom2, idRandom3, idRandom4];
    print(pokeRandom);

    var img, name, name2, name3, name4;
    var orden = [1, 2, 3, 4];

    Random r = new Random();
    for (int i = orden.length; i > 0; i--) {
      int posicion = r.nextInt(i);
      int tmp = orden[i - 1];
      orden[i - 1] = orden[posicion];
      orden[posicion] = tmp;
    }
    print(orden);

    var imgRandom = new Random();
    int ordenimg = imgRandom.nextInt(3);

    if (pokedex.length > 0) {
      img = pokedex[pokeRandom[ordenimg]]['img'];
      name = pokedex[pokeRandom[orden[0]]]['name'];
      name2 = pokedex[pokeRandom[orden[1]]]['name'];
      name3 = pokedex[pokeRandom[orden[2]]]['name'];
      name4 = pokedex[pokeRandom[orden[3]]]['name'];
      print(img);
    } else {
      img = "https://webstockreview.net/images/dot-clipart-bullet-point-9.png";
      name = "Pokemón";
      name2 = "Pokemón";
      name3 = "Pokemón";
      name4 = "Pokemón";
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
          const Positioned(
              top: 70,
              right: 20,
              child: Text(
                "¿Quíen es ese pokemón?",
                style: TextStyle(
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
          ),
          Positioned(
            top: (height * 0.50),
            left: (width / 2) - 170,
            child: Container(
                decoration: const BoxDecoration(
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
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    //Get.toNamed("/pokedex");
                    //Get.toNamed("/juego");
                  },
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.redAccent,
                )),
          ),
          Positioned(
            top: (height * 0.60),
            left: (width / 2) - 170,
            child: Container(
                decoration: const BoxDecoration(
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
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    //Get.toNamed("/pokedex");
                    //Get.toNamed("/juego");
                  },
                  child: Text(
                    name2,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.redAccent,
                )),
          ),
          Positioned(
            top: (height * 0.70),
            left: (width / 2) - 170,
            child: Container(
                decoration: const BoxDecoration(
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
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    //Get.toNamed("/pokedex");
                    //Get.toNamed("/juego");
                  },
                  child: Text(
                    name3,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.redAccent,
                )),
          ),
          Positioned(
            top: (height * 0.80),
            left: (width / 2) - 170,
            child: Container(
                decoration: const BoxDecoration(
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
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    //Get.toNamed("/pokedex");
                    //Get.toNamed("/juego");
                  },
                  child: Text(
                    name4,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.redAccent,
                )),
          ),

          //Positioned(top: 100, child: Text()),
        ],
      ),
    );
  }
}
