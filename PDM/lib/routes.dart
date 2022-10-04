import 'package:flutter/material.dart';
import 'package:pdm/detail/detail_page.dart';
import 'package:pdm/register/register_page.dart';
import 'package:pdm/welcome/welcome_page.dart';
import 'home/home_page.dart';

class RouteGenerator {
  static const String welcomePage = '/';
  static const String homePage = '/home';
  static const String registerPage = "/register";
  static const String detailPage = "/detail";

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomePage:
        return MaterialPageRoute(
          builder: (_) => const WelcomePage(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case registerPage:
        return MaterialPageRoute(
          builder: (_) => const RegisterPage(),
        );
      case detailPage:
        return MaterialPageRoute(
          builder: (_) => const DetailPage(),
        );
      default:
        throw FormatException("Rota não encontrada");
    }
  }
}
