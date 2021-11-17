import 'package:get/get.dart';
import 'package:pokemon/Pages/food_page.dart';
import 'package:pokemon/Pages/home_page.dart';
import 'package:pokemon/Pages/login_page.dart';
import 'package:pokemon/Pages/register_login_page.dart';

routes() => [
      GetPage(name: "/home", page: () => HomPage()),
      GetPage(name: "/loginpage", page: () => LoginPage()),
      GetPage(name: "/registro", page: () => RegisterLoginPage()),
      GetPage(
          name: "/foodpage",
          page: () => FoodPage(),
          transition: Transition.zoom),
    ];
