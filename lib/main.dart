import 'package:audvideo_calling_app/screens/home.dart';
import 'package:audvideo_calling_app/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'login',
    debugShowCheckedModeBanner: false,
    routes: {
      'login': (context) => MyLogin(),
      'home': (context) => MyHome(),
    },
  ));
}
