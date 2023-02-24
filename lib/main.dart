import 'package:flutter/material.dart';
import 'package:flutter_intro_screen/Screens/Dashboard.dart';
import 'package:flutter_intro_screen/Screens/Welcome.dart';
import 'package:flutter_intro_screen/Screens/Intro.dart';
import 'package:flutter_intro_screen/Screens/login.dart';
import 'package:flutter_intro_screen/Screens/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Intro Screen',
      theme: ThemeData(
          textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 25,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
            fontSize: 18,
            color: Colors.blueAccent,
            fontWeight: FontWeight.w400,
            wordSpacing: 1.2,
            height: 1.2),
        headline3: TextStyle(
          fontSize: 18,
          color: Colors.amber,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 18,
          color: Colors.amber,
          fontWeight: FontWeight.bold,
        ),
      )),
      home: const WelcomeScreen(),
      routes: {
        'welcome': ((context) => const WelcomeScreen()),
        'intro': ((context) => const IntroPage()),
        'signup': ((context) => const MyRegister()),
        'login': ((context) => const MyLogin()),
        'dashboard': ((context) => DashboardPage()),
      },
    );
  }
}
