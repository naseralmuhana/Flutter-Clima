import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:clima/screens/city_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingScreen(),
      theme: ThemeData.dark(),
      // initialRoute: '/loading_screen',
      // routes: {
      //   '/loading_screen': (context) => LoadingScreen(),
      //   '/location_screen': (context) => LocationScreen(),
      //   '/city_screen': (context) => CityScreen(),
      // },
    );
  }
}
