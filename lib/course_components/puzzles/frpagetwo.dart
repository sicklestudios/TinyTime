import 'package:flutter/material.dart';
import 'animals/hippo.dart';
import 'animals/elephant.dart';
import 'animals/chameleon.dart';

class FrtwoPage extends StatefulWidget {
  @override
  _FrtwoPageState createState() => _FrtwoPageState();
}

class _FrtwoPageState extends State<FrtwoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fr2.jpg'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              SizedBox(height: 390),
              Row(
                children: <Widget>[
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HippoPage()));
                    },
                    child: Container(
                      child: Image(
                          image: AssetImage('assets/hippo.png'), height: 240),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ElephantPage()));
                    },
                    child: Container(
                      child: Image(
                          image: AssetImage('assets/elephant.png'),
                          height: 200),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 45),
                  Text(
                    'Hippo',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 135),
                  Text(
                    'Elephant',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 27),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChameleonPage()));
                    },
                    child: Container(
                      child: Image(
                          image: AssetImage('assets/chameleon.png'),
                          height: 120),
                    ),
                  ),
                  Text(
                    'Chameleon',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 81),
                  Text(
                    '-->',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 33,
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
