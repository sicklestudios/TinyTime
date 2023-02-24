import 'package:flutter/material.dart';

class Story_2 extends StatefulWidget {
  @override
  _Story_2State createState() => _Story_2State();
}

class _Story_2State extends State<Story_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(35),
        child: Column(
          children: const <Widget>[
            Text(
              'The Boy Who Cried Wolf',
              style: TextStyle(
                fontFamily: 'Nunito',
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 28,
                wordSpacing: 5,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'A young boy was tasked with watching over a flock of sheep. One day, he became bored and decided to play a trick on the villagers by shouting "Wolf! Wolf!" even though there was no wolf. The villagers rushed to help, but when they realized it was a false alarm, they scolded the boy. The next day, a wolf really did come, but when the boy shouted for help, the villagers thought it was another trick and didn\'t come to his aid. The wolf ended up taking many of the sheep.',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'NunitoSans',
                fontWeight: FontWeight.w400,
                fontSize: 24,
                wordSpacing: 3,
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
