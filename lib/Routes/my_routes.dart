import 'package:get/get.dart';
import 'package:pokemon/Pages/menu_page.dart';
import 'package:pokemon/Pages/home_page.dart';
import 'package:pokemon/Pages/juego_page.dart';
import 'package:pokemon/Pages/login_page.dart';
import 'package:pokemon/Pages/pokedex_page.dart';
import 'package:pokemon/Pages/preview_page.dart';
import 'package:pokemon/Pages/register_login_page.dart';

routes() => [
      GetPage(name: "/home", page: () => HomPage()),
      GetPage(name: "/loginpage", page: () => LoginPage()),
      GetPage(name: "/registro", page: () => RegisterLoginPage()),
      GetPage(name: "/pokedex", page: () => PokedexPage()),
      GetPage(name: "/preview", page: () => PreviewScreen()),
      GetPage(name: "/juego", page: () => JuegoScreen()),
      GetPage(
          name: "/menu", page: () => MenuPage(), transition: Transition.zoom),
    ];
