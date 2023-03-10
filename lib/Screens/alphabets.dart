import 'dart:developer';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';

class Alphabet extends StatefulWidget {
  const Alphabet({super.key});

  @override
  _AlphabetState createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  final audioPlayer = AudioPlayer();
  int _currentIndex = 0;
  var letter;
  List<String> currentWords = [];

  final List<String> _alphabet = [
    'Aa',
    'Bb',
    'Cc',
    'Dd',
    'Ee',
    'Ff',
    'Gg',
    'Hh',
    'Ii',
    'Jj',
    'Kk',
    'Ll',
    'Mm',
    'Nn',
    'Oo',
    'Pp',
    'Qq',
    'Rr',
    'Ss',
    'Tt',
    'Uu',
    'Vv',
    'Ww',
    'Xx',
    'Yy',
    'Zz'
  ];
  final Map<String, List<String>> _words = {
    'A': ['apple', 'airplane', 'arrow', 'alligator', 'ant'],
    'B': ['banana', 'butterfly', 'balloon', 'bee', 'bird'],
    'C': ['cat', 'car', 'cookie', 'candle', 'camera'],
    'D': ['dog', 'duck', 'donut', 'dolphin', 'diamond'],
    'E': ['elephant', 'eagle', 'ear', 'egg', 'engine'],
    'F': ['frog', 'fish', 'fire', 'flag', 'flower'],
    'G': ['goat', 'grapes', 'guitar', 'giraffe', 'ghost'],
    'H': ['horse', 'house', 'heart', 'hat', 'hammer'],
    'I': ['ice cream', 'igloo', 'island', 'insect', 'iron'],
    'J': ['jellyfish', 'jacket', 'jar', 'jet', 'jigsaw'],
    'K': ['kangaroo', 'kite', 'key', 'king', 'knife'],
    'L': ['lion', 'lemon', 'lighthouse', 'leaf', 'laptop'],
    'M': ['monkey', 'moon', 'milk', 'mountain', 'motorcycle'],
    'N': ['nose', 'nest', 'net', 'notebook', 'necklace'],
    'O': ['octopus', 'orange', 'ocean', 'owl', 'oil'],
    'P': ['penguin', 'pear', 'pumpkin', 'pencil', 'pizza'],
    'Q': ['queen', 'quilt', 'quail', 'quarter', 'question'],
    'R': ['rabbit', 'rain', 'ring', 'rocket', 'rose'],
    'S': ['sun', 'star', 'snake', 'snowman', 'spider'],
    'T': ['tiger', 'turtle', 'tree', 'train', 'television'],
    'U': ['umbrella', 'unicorn', 'uniform', 'ufo', 'under'],
    'V': ['vase', 'violin', 'volcano', 'vegetable', 'van'],
    'W': ['whale', 'watermelon', 'windmill', 'watch', 'wheel'],
    'X': ['xylophone', 'x-ray', 'fox', 'box', 'six'],
    'Y': ['yacht', 'yellow', 'yo-yo', 'yawn', 'yak'],
    'Z': ['zebra', 'zip', 'zoo', 'zero', 'zink'],
  };

  void _incrementIndex() {
    setState(() {
      if (_currentIndex < _alphabet.length - 1) {
        _currentIndex++;
        String currentLetter = _alphabet[_currentIndex];
        playSound("${currentLetter.substring(0, 1).toLowerCase()}.mp3");
      }
    });
    // _audioPlayer.play(AssetSource('$letter.mp3'));
  }

  void _decrementIndex() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
        String currentLetter = _alphabet[_currentIndex];
        playSound("${currentLetter.substring(0, 1).toLowerCase()}.mp3");
      }
    });

    // _audioPlayer.play(AssetSource('$letter.mp3'));
  }

  Color _getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  void playSound(String letter) {
    audioPlayer.play(AssetSource('audios/$letter'));
  }

  List<String> _getWordsForCurrentIndex() {
    String currentLetter = _alphabet[_currentIndex];
    currentWords.clear();
    return _words[currentLetter.substring(0, 1)] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    currentWords.clear();

    currentWords = _getWordsForCurrentIndex();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              // height: 250.0,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: _alphabet.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return TextLiquidFill(
                    key: ValueKey(_alphabet[_currentIndex]),
                    text: _alphabet[_currentIndex],
                    waveColor: Colors.yellow,
                    boxBackgroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 200.0,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: Container(
              color: Colors.transparent,
              height: 250.0,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: currentWords.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  // return TextLiquidFill(
                  //   key: ValueKey(_words[_currentIndex]),
                  //   text: currentWords[index],
                  //   waveColor: Colors.red,
                  //   boxBackgroundColor: Colors.white,
                  //   textStyle: const TextStyle(
                  //     fontSize: 80.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // );
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (() {
                            playSound(
                                "${currentWords[index].toUpperCase()}.MP3");
                          }),
                          child: Text(
                            currentWords[index],
                            style: TextStyle(
                              color: _getRandomColor(),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: _decrementIndex,
                  child: Image.asset(
                    'assets/audios/back_arrow.png',
                  )),
              InkWell(
                  onTap: _incrementIndex,
                  child: Image.asset(
                    'assets/audios/forward_arrow.png',
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
