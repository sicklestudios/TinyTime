import 'package:flutter/material.dart';

class Story_3 extends StatefulWidget {
  @override
  _Story_3State createState() => _Story_3State();
}

class _Story_3State extends State<Story_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(35),
        child: Column(
          children: const <Widget>[
            Text(
              'Goldilocks and the Three Bears',
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
              'One day, a young girl named Goldilocks stumbled upon a house in the woods. She went inside and found three bowls of porridge. One was too hot, one was too cold, and one was just right, so she ate the one that was just right. She then found three chairs. One was too big, one was too small, and one was just right, so she sat in the one that was just right. Finally, she found three beds. One was too hard, one was too soft, and one was just right, so she fell asleep in the one that was just right. When the three bears who lived in the house returned, they found Goldilocks sleeping in Baby Bear\'s bed. They woke her up and she ran away, never to return again.',
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
