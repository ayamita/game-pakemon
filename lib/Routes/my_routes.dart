import 'package:get/get.dart';
import 'package:pokemon/Pages/food_page.dart';
import 'package:pokemon/Pages/home_page.dart';

routes() => [
      GetPage(name: "/home", page: () => const HomPage()),
      //GetPage(name: "/registration", page: () => const registrerpage()),
      GetPage(
          name: "/foodpage",
          page: () => FoodPage(),
          transition: Transition.zoom),
    ];
