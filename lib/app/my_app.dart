import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/views/home_page.dart';

import '../routes/routes_settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.routeName,
      onGenerateRoute: (settings) => generateRoute(settings),
      supportedLocales: const [
        Locale('en,' 'us'),
        Locale('fa,' 'IR'),
        Locale('ar' 'SA'),
        Locale('hi' 'IN'),
      ],
    );
  }
}
