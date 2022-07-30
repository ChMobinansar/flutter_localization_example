import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/views/about_page.dart';
import 'package:flutter_localization/views/home_page.dart';
import 'package:flutter_localization/views/setting_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePage.routeName:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case AboutPage.routeName:
      return MaterialPageRoute(builder: (context) => const AboutPage());
    case SettingPage.routeName:
      return MaterialPageRoute(builder: (context) => const SettingPage());
    // case SplashView.routeName:
    //   return MaterialPageRoute(builder: (context) => const SplashView());
    default:
      return errorRoute();
  }
}

Route<dynamic> errorRoute() {
  return MaterialPageRoute(
    builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Arggg!'),
        ),
        body: const Center(
          child: Text('Oh No! You should not be here! '),
        ),
      );
    },
  );
}
