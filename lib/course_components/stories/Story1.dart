import 'package:flutter/material.dart';

class Story_1 extends StatefulWidget {
  @override
  _Story_1State createState() => _Story_1State();
}

class _Story_1State extends State<Story_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(35),
        child: Column(
          children: const <Widget>[
            Text(
              'The Tortoise and the Hare',
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
              'Once upon a time, there was a tortoise and a hare who decided to have a race. The hare was very confident in his speed and decided to take a nap during the race. However, the tortoise continued to plod along slowly and eventually won the race because the hare had overslept.',
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
