// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class ToucanPage extends StatefulWidget {
  @override
  _ToucanPageState createState() => _ToucanPageState();
}

class _ToucanPageState extends State<ToucanPage> {
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
            'Toucan',
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
            'Toucan moms lay two \n         to four eggs.',
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
              image: AssetImage('assets/toucan.png'),
              height: 230,
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
                  play.play(AssetSource('Toucan.mp3'));
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
            'A Toucan makes a clattering sound.',
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
        'Toucans are renowned for \n their large colorful bills.',
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
        "The Toucan's bill is very light \n as it is made of keratin.",
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
        'Toco Toucans also use their \n beaks to pluck and peel fruit.',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'NunitoSans',
            fontSize: 18),
      ),
    ),
  );
}

AudioPlayer pp = AudioPlayer();
AudioPlayer play = AudioPlayer();
