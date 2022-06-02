// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:riders_food_app/screens/home_screen.dart';
import 'package:riders_food_app/splash_screen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'global/global.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyBtGaTDbPdubsl1yTh_Hapq7RzAwWERTKs",
    appId: "1:38185865524:web:72f58859dfcc9743081561",
    messagingSenderId: "38185865524",
    projectId: "bring-clone-app",
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riders App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomeScreen(),
    );
  }
}