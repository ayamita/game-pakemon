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
    //obtenemos los id's de 4 pokemones de forma randon de la API.
    var numRandom = Random();
    int idRandom = numRandom.nextInt(151);
    int idRandom2 = numRandom.nextInt(151);
    int idRandom3 = numRandom.nextInt(151);
    int idRandom4 = numRandom.nextInt(151);
    //Se agregan los valores de una lista para seleccionar despues.
    var pokeRandom = [idRandom3, idRandom, idRandom2, idRandom3, idRandom4];
    //Se creean las variables que ocuparan los botones.
    var img = "", name = "", name2 = "", name3 = "", name4 = "", nameimg = "";
    //Se crea una lista que pasa a un ciclo para acomodar de forma aleatorea los datos de la lista.
    var orden = [1, 2, 3, 4];
    Random r = Random();
    for (int i = orden.length; i > 0; i--) {
      int posicion = r.nextInt(i);
      int tmp = orden[i - 1];
      orden[i - 1] = orden[posicion];
      orden[posicion] = tmp;
    }
    //Se crea otra variable randon para que la imagen igual sea idependiente.
    var imgRandom = Random();
    int ordenimg = imgRandom.nextInt(3);
    //Se valida que la api haya devuelto información en este caso un pokemon
    if (pokedex.isNotEmpty) {
      //Se obtiene el pokemon randon que se muestra en la imagen.
      img = pokedex[pokeRandom[ordenimg]]['img'];
      nameimg = pokedex[pokeRandom[ordenimg]]['name'];
      //Se obtienen los nombres de los pokemones que iran en los botones.
      name = pokedex[pokeRandom[orden[0]]]['name'];
      name2 = pokedex[pokeRandom[orden[1]]]['name'];
      name3 = pokedex[pokeRandom[orden[2]]]['name'];
      name4 = pokedex[pokeRandom[orden[3]]]['name'];
      print(pokeRandom);
      print(orden);
      print(img + "    " + nameimg);
    } else {
      /*Cuando inicializa el proyecto no obtiene valores de las variables por lo que se les asigna uno temporalmente, 
      ya que posteriormente se les asignan valores.*/
      img = "https://webstockreview.net/images/dot-clipart-bullet-point-9.png";
      name = "Pokemón";
      name2 = "Pokemón";
      name3 = "Pokemón";
      name4 = "Pokemón";
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
