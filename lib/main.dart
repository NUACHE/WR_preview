import 'package:flutter/material.dart';
import 'package:practice_arena/intro/language.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage('images/taxi.png'), context);
    precacheImage(AssetImage('images/car.jpg'), context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        color: Colors.green[100],
        home: Screen());
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(125.0),
          child: GestureDetector(
            onTap: () {
              print('hi');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Language(),
                ),
              );
            },
            child: Image(
              image: AssetImage('images/taxi.png'),
            ),
          ),
        ),
      ),
    );
  }
}
