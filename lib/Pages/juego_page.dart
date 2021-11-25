import 'dart:convert';
import 'dart:html';
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

    int count = Get.arguments['count'];

    int idRandom = numRandom.nextInt(152);
    int idRandom2 = numRandom.nextInt(152);
    int idRandom3 = numRandom.nextInt(152);
    int idRandom4 = numRandom.nextInt(152);

    var list = [0, idRandom, idRandom2, idRandom3, idRandom4];

    var pokemon, pokemon2, pokemon3, pokemon4, img;

    if (pokedex.length > 0) {
      img = pokedex[idRandom]['img'];
      //pokemon = pokedex[idRandom]['name'];
      print(img);
      // print(pokemon);
      print(list[0]);
      print(list[1]);
      print(list[2]);
      print(list[3]);
      int i = 0;
      do {
        int ruleta = numRandom.nextInt(5);
        int no = numRandom.nextInt(5);
        int? no2, no3, no4;
        var list2 = [0, 1, 2, 3, 4];
        print(list2);

        if (pokemon == null && no > 0 && no == list2[ruleta]) {
          pokemon = pokedex[list[i]]['name'];
          print(pokemon);
          i++;
          no2 = no;
        } else {
          if (pokemon2 == null &&
              no > 0 &&
              no2 != null &&
              no != no2 &&
              no == list2[ruleta]) {
            pokemon2 = pokedex[list[i]]['name'];
            print(pokemon2);
            no3 = no;
            i++;
          } else {
            if (pokemon3 == null &&
                no > 0 &&
                no2 != null &&
                no != no2 &&
                no3 != null &&
                no != no3 &&
                no == list2[ruleta]) {
              pokemon3 = pokedex[list[i]]['name'];
              print(pokemon3);
              i++;
              no4 = no;
            } else {
              if (pokemon4 == null &&
                  no > 0 &&
                  no2 != null &&
                  no != no2 &&
                  no3 != null &&
                  no != no3 &&
                  no4 != null &&
                  no != no4 &&
                  no == list2[ruleta]) {
                pokemon4 = pokedex[list[i]]['name'];
                print(pokemon4);
                i++;
              }
            }
          }
        }
      } while (i < 4);
    } else {
      img = "https://webstockreview.net/images/dot-clipart-bullet-point-9.png";
      pokemon = "Pokemón";
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
                  child: const Text(
                    "Pokedex",
                    style: TextStyle(
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
