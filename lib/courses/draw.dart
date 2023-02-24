import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../course_components/draw/doodle.dart';
import '../course_components/draw/shapes.dart';

class Drawing extends StatefulWidget {
  @override
  _DrawingState createState() => _DrawingState();
}

class _DrawingState extends State<Drawing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back4.jpg'), fit: BoxFit.cover),
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
                  // color: const Color(0xFF9343D4),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 200,
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(width: 43),
                          Text(
                            'Learn to Draw',
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
                      //     image: AssetImage('assets/colorpalette.png')),
                    ],
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 40),
            // InkWell(
            //   onTap: () {
            //     //Navigator.push(context, MaterialPageRoute(builder: (context) => Numbers()));
            //   },
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(35),
            //     child: Container(
            //       padding: const EdgeInsets.all(10),
            //       color: Colors.orangeAccent[200],
            //       width: 350,
            //       height: 130,
            //       child: Row(
            //         children: <Widget>[
            //           ClipRRect(
            //             borderRadius: new BorderRadius.circular(24.0),
            //             child: const Image(
            //                 image: AssetImage('assets/numbers.jpg')),
            //           ),
            //           const SizedBox(width: 28),
            //           const Text(
            //             'Numbers',
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontFamily: 'LoveYaLikeASister',
            //                 fontSize: 40),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 40),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Shapes()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFF24D382),
                  width: 320,
                  height: 130,
                  child: Row(
                    children: <Widget>[
                      Transform.translate(
                        offset: const Offset(30, 0), // shift image to the right
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(24.0),
                          child: const Image(
                              image: AssetImage('assets/shapes.png')),
                        ),
                      ),
                      const SizedBox(width: 38),
                      Text(
                        'Shapes',
                        style: GoogleFonts.cabinSketch(
                          color: Colors.white,
                          fontSize: 34,
                        ),
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
                    context, MaterialPageRoute(builder: (context) => Draw()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFFFF585D),
                  width: 320,
                  height: 130,
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: const Image(
                            image: AssetImage('assets/squiggle.png')),
                      ),
                      const SizedBox(width: 35),
                      Text(
                        'Scribble',
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
    );
  }
}
