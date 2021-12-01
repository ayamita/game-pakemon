import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PokedexPage extends StatefulWidget {
  @override
  _PokedexPageState createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
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
    var colorbutton = Colors.red[900];
    return Scaffold(
      body: Stack(children: [
        Positioned(
            top: -50,
            right: -50,
            child: Image.asset('images/pokefondo.png',
                width: 200, fit: BoxFit.fitWidth)),
        const Positioned(
            top: 100,
            left: 20,
            child: Text(
              "Pokedex",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
        Positioned(
          top: 150,
          bottom: 0,
          width: width,
          child: Column(
            children: [
              pokedex != null
                  ? Expanded(
                      child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.4,
                      ),
                      itemCount: pokedex.length,
                      itemBuilder: (context, index) {
                        var type = pokedex[index]['type'][0];
                        return InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xFFB71C1C),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: -10,
                                    right: -10,
                                    child: Image.asset(
                                      'images/pokefondow.png',
                                      height: 100,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Positioned(
                                      top: 20,
                                      left: 20,
                                      child: Text(
                                        pokedex[index]['name'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white),
                                      )),
                                  Positioned(
                                    top: 45,
                                    left: 20,
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0,
                                            right: 8.0,
                                            top: 4,
                                            bottom: 4),
                                        child: Text(
                                          type.toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 5,
                                    child: CachedNetworkImage(
                                      imageUrl: pokedex[index]['img'],
                                      height: 100,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            //Navigate to new detail screen
                          },
                        );
                      },
                    ))
                  : const Center(
                      child: CircularProgressIndicator(),
                    )
            ],
          ),
        ),
      ]),
    );
  }
}
