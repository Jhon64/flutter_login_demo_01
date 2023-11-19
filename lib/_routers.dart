import 'package:flutter/material.dart';
import 'package:login_example/screens/home_screen.dart';
import 'package:login_example/screens/login_screen.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  "/":(context)=>const LoginScreen(),
  "/home":(context)=>const HomeScreen(),
};