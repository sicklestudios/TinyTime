import 'package:flutter/material.dart';
import 'package:flutter_intro_screen/courses/identify.dart';
import 'package:flutter_intro_screen/courses/memory.dart';
import 'package:flutter_intro_screen/methods/auth_methods.dart';
import 'package:google_fonts/google_fonts.dart';
import '../courses/draw.dart';
import '../courses/puzzle.dart';
import '../course_components/quiz/quiz.dart';
import '../courses/story.dart';
import 'alphabets.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back3.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () async {
                        await AuthMethods().signOut();
                      },
                      icon: const Icon(Icons.logout_rounded))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Pick a Category',
                        style: GoogleFonts.cabinSketch(
                            color: Colors.blue,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Container(
                      // height: MediaQuery.of(context).size.height - 110.0,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(75.0)),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 60),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Drawing(),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  color: const Color(0xFF9343D4),
                                  width: 300,
                                  height: 115,
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: const Image(
                                          fit: BoxFit.contain,
                                          alignment: Alignment.bottomLeft,
                                          image: AssetImage("assets/draw.png"),
                                        ),
                                      ),
                                      const SizedBox(width: 50),
                                      Text(
                                        'Draw',
                                        style: GoogleFonts.cabinSketch(
                                            color: Colors.white, fontSize: 32),
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
                                    builder: (context) => Puzzle(),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  color: const Color(0xFF5DDEE8),
                                  width: 300,
                                  height: 115,
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: const Image(
                                          fit: BoxFit.contain,
                                          alignment: Alignment.bottomLeft,
                                          image:
                                              AssetImage("assets/puzzle.png"),
                                        ),
                                      ),
                                      const SizedBox(width: 37),
                                      Text(
                                        'Puzzles',
                                        style: GoogleFonts.cabinSketch(
                                            color: Colors.white, fontSize: 32),
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
                                    builder: (context) => Quiz(),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  color: Colors.pinkAccent[200],
                                  width: 300,
                                  height: 115,
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: const Image(
                                          fit: BoxFit.contain,
                                          alignment: Alignment.bottomLeft,
                                          image: AssetImage("assets/quiz.png"),
                                        ),
                                      ),
                                      const SizedBox(width: 46),
                                      Text(
                                        'Quiz',
                                        style: GoogleFonts.cabinSketch(
                                            color: Colors.white, fontSize: 32),
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
                                    builder: (context) => Story(),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  color: const Color(0xFFFF585D),
                                  width: 300,
                                  height: 115,
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: const Image(
                                          fit: BoxFit.contain,
                                          alignment: Alignment.bottomLeft,
                                          image:
                                              AssetImage("assets/stories.png"),
                                        ),
                                      ),
                                      const SizedBox(width: 25),
                                      Text(
                                        '   Stories',
                                        style: GoogleFonts.cabinSketch(
                                            color: Colors.white, fontSize: 32),
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
                                    builder: (context) => Memory(),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  color: Colors.amber,
                                  width: 300,
                                  height: 115,
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: const Image(
                                          fit: BoxFit.contain,
                                          alignment: Alignment.bottomLeft,
                                          image:
                                              AssetImage("assets/memory.png"),
                                        ),
                                      ),
                                      const SizedBox(width: 25),
                                      Text(
                                        'Memory',
                                        style: GoogleFonts.cabinSketch(
                                            color: Colors.white, fontSize: 32),
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
                                    builder: (context) => const Alphabet(),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  color: Colors.orange,
                                  width: 300,
                                  height: 115,
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: const Image(
                                          fit: BoxFit.contain,
                                          alignment: Alignment.bottomLeft,
                                          image:
                                              AssetImage("assets/identify.png"),
                                        ),
                                      ),
                                      const SizedBox(width: 25),
                                      Text(
                                        'Identify',
                                        style: GoogleFonts.cabinSketch(
                                            color: Colors.white, fontSize: 32),
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
            ],
          ),
        ),
      ),
    );
  }
}
