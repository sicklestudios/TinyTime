import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class ZebraPage extends StatefulWidget {
  @override
  _ZebraPageState createState() => _ZebraPageState();
}

class _ZebraPageState extends State<ZebraPage> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> steps = [
      _step0(),
      _step1(),
      _step2(),
    ];

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  play.play(AssetSource('pageturn.mp3'));
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 35,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                width: 285,
              ),
              LikeButton(
                size: 35,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Zebra',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 35,
                fontFamily: 'Nunito'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Zebra moms give birth to \n              one foal.',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: 'Nunito'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Image(
              image: AssetImage('assets/zebra.png'),
              height: 250,
              width: 420,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: () {
                  play.play(AssetSource('zebra.mp3'));
                },
                child: Container(
                  width: 70,
                  height: 50,
                  color: Colors.deepOrangeAccent,
                  child: Icon(
                    Icons.music_note,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                'Play Sound',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'NunitoSans'),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'A Zebra makes a snorting sound.',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
                fontFamily: 'Nunito'),
          ),
          SizedBox(
            height: 25,
          ),
          ConstrainedBox(
            constraints: BoxConstraints.loose(Size(350, 170)),
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return steps[index];
              },
              itemCount: 3,
              itemHeight: 170,
              itemWidth: 350,
              layout: SwiperLayout.TINDER,
              control: SwiperControl(color: Colors.black),
              pagination: SwiperPagination(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _step0() {
  return Container(
    height: 170,
    width: 350,
    color: Colors.deepOrangeAccent[100],
    child: Center(
      child: Text(
        'Zebras are single-hoofed animals \n that are native to Africa.',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'NunitoSans',
            fontSize: 18),
      ),
    ),
  );
}

Widget _step1() {
  return Container(
    height: 170,
    width: 350,
    color: Colors.deepOrangeAccent[100],
    child: Center(
      child: Text(
        " Each species of zebra has a \n different general pattern of stripes.",
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'NunitoSans',
            fontSize: 18),
      ),
    ),
  );
}

Widget _step2() {
  return Container(
    height: 170,
    width: 350,
    color: Colors.deepOrangeAccent[100],
    child: Center(
      child: Text(
        'The most prominent feature \n of zebras is the bold patterns \n on their coats. ',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'NunitoSans',
            fontSize: 18),
      ),
    ),
  );
}

AudioCache plyr = AudioCache();
AudioPlayer play = AudioPlayer();
