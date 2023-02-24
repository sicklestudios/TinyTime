import 'package:flutter/material.dart';
import 'animals/lion.dart';
import 'animals/toucan.dart';
import 'animals/armadillo.dart';

class FronePage extends StatefulWidget {
  @override
  _FronePageState createState() => _FronePageState();
}

class _FronePageState extends State<FronePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fr1.jpg'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              const SizedBox(
                height: 14,
              ),
              Text(
                'Tap us to know more.',
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 58,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ToucanPage()));
                },
                child: Container(
                  child: const Image(
                      image: AssetImage('assets/toucan.png'), height: 140),
                ),
              ),
              const Text(
                'Toucan',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 74,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LionPage()));
                },
                child: Container(
                  child: const Image(
                    image: AssetImage('assets/lion.png'),
                    height: 250,
                    width: 420,
                  ),
                ),
              ),
              const Text(
                'Lion',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 1),
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 18,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArmadilloPage()));
                    },
                    child: Container(
                      child: const Image(
                          image: AssetImage('assets/armadillo.png'),
                          height: 118),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  const SizedBox(width: 46),
                  const Text(
                    'Armadillo',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 75),
                  const Text(
                    'Swipe -->',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
