import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:target/screens/choose_store.dart';
import 'package:target/screens/favourites.dart';
import 'package:target/screens/laundary%20care.dart';
import 'package:target/screens/register_screen.dart';
import 'package:target/screens/sign_in.dart';
import 'package:target/screens/splash_screen.dart';
import 'package:target/screens/stock.dart';
import 'package:target/screens/user_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:core';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:  Color.fromRGBO(173, 9, 8, 1),
      ),
      home: SplashScreen(),
    );
  }
}
