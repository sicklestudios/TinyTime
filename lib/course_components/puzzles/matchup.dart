import 'package:flutter/material.dart';
import 'package:flutter_intro_screen/course_components/puzzles/alphabets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fruits.dart';
import 'animals.dart';
import 'plants.dart';

class Match extends StatefulWidget {
  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back5.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  // Image(
                  //     height: 180,
                  //     width: 210,
                  //     fit: BoxFit.contain,
                  //     alignment: Alignment.center,
                  //     image: AssetImage('assets/Bevis.png')),
                  // Column(
                  //   children: <Widget>[
                  //     Text(
                  //       "Hey!",
                  //       style: TextStyle(
                  //           color: Colors.black,
                  //           fontFamily: 'Nunito',
                  //           fontSize: 35),
                  //     ),
                  //     Text(
                  //       "I'm Bevis.",
                  //       style: TextStyle(
                  //           color: Colors.black,
                  //           fontFamily: 'Nunito',
                  //           fontSize: 35),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                // color: Colors.deepOrangeAccent[100],
                child: Text(
                  " Match objects with \n their Colors.",
                  style:
                      GoogleFonts.cabinSketch(color: Colors.blue, fontSize: 45),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ColorGameThree()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.pinkAccent[400],
                    width: 320,
                    height: 130,
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: const Image(
                            image: AssetImage('assets/alphabets.png'),
                            height: 102,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Alphabets',
                          style: GoogleFonts.cabinSketch(
                              color: Colors.white, fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ColorGameOne()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.purpleAccent[700],
                    width: 320,
                    height: 130,
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: const Image(
                            image: AssetImage('assets/plants.png'),
                            height: 102,
                          ),
                        ),
                        const SizedBox(width: 37),
                        Text(
                          'Plants',
                          style: GoogleFonts.cabinSketch(
                              color: Colors.white, fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ColorGame()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.greenAccent[400],
                    width: 320,
                    height: 130,
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Container(
                            color: Colors.white,
                            height: 110,
                            child: const Image(
                              image: AssetImage('assets/fruits.png'),
                              height: 100,
                            ),
                          ),
                        ),
                        const SizedBox(width: 40),
                        Text(
                          'Fruits',
                          style: GoogleFonts.cabinSketch(
                              color: Colors.white, fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ColorGameTwo()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.redAccent,
                    width: 320,
                    height: 130,
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Container(
                            color: Colors.white,
                            height: 110,
                            child: const Image(
                                image: AssetImage('assets/animals2.png')),
                          ),
                        ),
                        const SizedBox(width: 22),
                        Text(
                          'Animals',
                          style: GoogleFonts.cabinSketch(
                              color: Colors.white, fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
