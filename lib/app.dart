import 'package:flutter/material.dart';
import './_routers.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
