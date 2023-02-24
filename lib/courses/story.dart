import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intro_screen/course_components/stories/Story1.dart';
import 'package:flutter_intro_screen/course_components/stories/Story2.dart';
import 'package:flutter_intro_screen/course_components/stories/Story3.dart';
import 'package:google_fonts/google_fonts.dart';
import '../course_components/stories/storyone.dart';
import '../course_components/stories/storytwo.dart';
import '../course_components/stories/storythree.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back6.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: 450,
                  // color: const Color(0xFFFF585D),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 200,
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(width: 114),
                          Text(
                            'Stories',
                            style: GoogleFonts.cabinSketch(
                                color: Colors.blue,
                                fontSize: 55,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // const Image(
                      //     height: 200,
                      //     fit: BoxFit.contain,
                      //     alignment: Alignment.center,
                      //     image: AssetImage('assets/f.png')),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Story_1()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.purpleAccent[200],
                          width: 350,
                          height: 130,
                          child: Row(
                            children: <Widget>[
                              // ClipRRect(
                              //   borderRadius: BorderRadius.circular(24.0),
                              //   child: const Image(
                              //     image: AssetImage('assets/s1.png'),
                              //     height: 102,
                              //   ),
                              // ),
                              SizedBox(width: 50),
                              Text(
                                'The Tortoise and\n the Hare',
                                style: GoogleFonts.cabinSketch(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
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
                            MaterialPageRoute(builder: (context) => Story_2()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.pinkAccent[200],
                          width: 350,
                          height: 130,
                          child: Row(
                            children: <Widget>[
                              // ClipRRect(
                              //   borderRadius: BorderRadius.circular(24.0),
                              //   child: const Image(
                              //     image: AssetImage('assets/s1.png'),
                              //     height: 102,
                              //   ),
                              // ),
                              SizedBox(width: 50),
                              Text(
                                'The Boy Who \n Cried Wolf',
                                style: GoogleFonts.cabinSketch(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
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
                            MaterialPageRoute(builder: (context) => Story_3()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.orangeAccent[200],
                          width: 350,
                          height: 130,
                          child: Row(
                            children: <Widget>[
                              // ClipRRect(
                              //   borderRadius: BorderRadius.circular(24.0),
                              //   child: const Image(
                              //     image: AssetImage('assets/s1.png'),
                              //     height: 102,
                              //   ),
                              // ),
                              SizedBox(width: 50),
                              Text(
                                'Goldilocks and \nthe Three Bears',
                                style: GoogleFonts.cabinSketch(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoryOne()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.yellowAccent[400],
                          width: 350,
                          height: 130,
                          child: Row(
                            children: <Widget>[
                              // ClipRRect(
                              //   borderRadius: BorderRadius.circular(24.0),
                              //   child: const Image(
                              //     image: AssetImage('assets/s1.png'),
                              //     height: 102,
                              //   ),
                              // ),
                              SizedBox(width: 50),
                              Text(
                                'The Boatman',
                                style: GoogleFonts.cabinSketch(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoryTwo()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.blueAccent[200],
                          width: 350,
                          height: 130,
                          child: Row(
                            children: <Widget>[
                              // ClipRRect(
                              //   borderRadius: BorderRadius.circular(24.0),
                              //   child: Container(
                              //     color: Colors.white,
                              //     height: 110,
                              //     child: const Image(
                              //       image: AssetImage('assets/s2.png'),
                              //       height: 100,
                              //     ),
                              //   ),
                              // ),
                              SizedBox(width: 50),
                              Text(
                                'The Tomb',
                                style: GoogleFonts.cabinSketch(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoryThree()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.greenAccent[200],
                          width: 350,
                          height: 130,
                          child: Row(
                            children: <Widget>[
                              // ClipRRect(
                              //   borderRadius: new BorderRadius.circular(24.0),
                              //   child: Container(
                              //     color: Colors.white,
                              //     height: 110,
                              //     child: const Image(
                              //         image: AssetImage('assets/s3.png')),
                              //   ),
                              // ),
                              SizedBox(width: 50),
                              Text(
                                'Grasslands',
                                style: GoogleFonts.cabinSketch(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
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
          ],
        ),
      ),
    );
  }
}
