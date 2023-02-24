import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../course_components/puzzles/matchup.dart';
import '../course_components/puzzles/facts.dart';

class Puzzle extends StatefulWidget {
  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back5.jpg'), fit: BoxFit.cover),
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
                  // color: Color(0xFF5DDEE8),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 200,
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(width: 114),
                          Text(
                            'Puzzles',
                            style: GoogleFonts.cabinSketch(
                                color: Colors.blue,
                                fontSize: 55,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // Image(
                      //     height: 200,
                      //     fit: BoxFit.contain,
                      //     alignment: Alignment.center,
                      //     image: AssetImage('assets/puzz.png')),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    // Container(
                    //   child: Row(
                    //     children: <Widget>[
                    //       const Image(
                    //           height: 190,
                    //           width: 210,
                    //           fit: BoxFit.contain,
                    //           alignment: Alignment.center,
                    //           image: AssetImage('assets/panda.png')),
                    //       Column(
                    //         children: <Widget>[
                    //           const Text(
                    //             "Solve!",
                    //             style: TextStyle(
                    //                 color: Colors.black,
                    //                 fontFamily: 'Nunito',
                    //                 fontSize: 35),
                    //           ),
                    //           const Text(
                    //             "Puzzles.",
                    //             style: TextStyle(
                    //                 color: Colors.black,
                    //                 fontFamily: 'Nunito',
                    //                 fontSize: 35),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Match()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: const Color(0xFF3A3FBD),
                          width: 320,
                          height: 130,
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                                child: const Image(
                                    image: AssetImage('assets/match.png')),
                              ),
                              const SizedBox(width: 42),
                              Text(
                                'Match',
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FactPage()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: const Color(0xFF76BE1A),
                          width: 320,
                          height: 130,
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                                child: const Image(
                                    image: AssetImage('assets/search.png')),
                              ),
                              const SizedBox(width: 23),
                              Text(
                                'Search',
                                style: GoogleFonts.cabinSketch(
                                    color: Colors.white, fontSize: 40),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
