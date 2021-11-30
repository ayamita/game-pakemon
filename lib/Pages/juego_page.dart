import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon/Models/pokemon_model.dart';
import 'package:pokemon/Widgets/juego_widgets.dart';

class JuegoScreen extends StatefulWidget {
  @override
  State<JuegoScreen> createState() => _JuegoScreenState();
}

class _JuegoScreenState extends State<JuegoScreen> {
  List pokedex = [];

  Future getPokemones() async {
    var url = Uri.https("raw.githubusercontent.com",
        "/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    // ignore: unused_local_variable
    final resp = await http.get(url);
    return reqRespRespuestaFromJson(resp.body);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    int count = Get.arguments['count'];

    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: FutureBuilder(
        future: getPokemones(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Game(
              height: height,
              width: width,
              pokemones: snapshot.data.pokemon,
              count: count,
            );
          }
        },
      ),
    );
  }
}

class Game extends StatelessWidget {
  const Game(
      {Key? key,
      required this.height,
      required this.width,
      required this.count,
      required this.pokemones})
      : super(key: key);

  final List<Pokemon> pokemones;
  final int count;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    var numRandom = Random();
    int idRandom = numRandom.nextInt(151);
    int idRandom2 = numRandom.nextInt(151);
    int idRandom3 = numRandom.nextInt(151);
    int idRandom4 = numRandom.nextInt(151);
    //Se agregan los valores de una lista para seleccionar despues.
    var pokeRandom = [0, idRandom, idRandom2, idRandom3, idRandom4];
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

    var img = pokemones[pokeRandom[orden[ordenimg]]].img;
    var nameimg = pokemones[pokeRandom[orden[ordenimg]]].name;
    var name = pokemones[pokeRandom[orden[0]]].name;
    var name2 = pokemones[pokeRandom[orden[2]]].name;
    var name3 = pokemones[pokeRandom[orden[3]]].name;
    var name4 = pokemones[pokeRandom[orden[1]]].name;
    print(pokeRandom);
    print(orden);
    print(img + "    " + nameimg);

    return Stack(
      children: [
        imgFondo(height: height),
        bordes(width: width, height: height),
        const titulo(),
        imagenPokemon(height: height, width: width, count: count, img: img),
        namepokemon(
          height: height,
          width: width,
          count: count,
          name: name,
          img: img,
          nameimg: nameimg,
        ),
        namepokemon2(
          height: height,
          width: width,
          count: count,
          name2: name2,
          img: img,
          nameimg: nameimg,
        ),
        namepokemon3(
          height: height,
          width: width,
          count: count,
          name3: name3,
          img: img,
          nameimg: nameimg,
        ),
        namepokemon4(
          height: height,
          width: width,
          count: count,
          name4: name4,
          img: img,
          nameimg: nameimg,
        ),
      ],
    );
  }
}
