import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

class ColorGameThree extends StatefulWidget {
  @override
  _ColorGameThreeState createState() => _ColorGameThreeState();
}

class _ColorGameThreeState extends State<ColorGameThree> {
  var player = AudioPlayer();
  late List<ItemModel> items;
  late List<ItemModel> items2;
  late int score;
  late bool gameOver;

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(value: 'A', name: 'Apple', img: 'assets/alphabets/a.png'),
      ItemModel(value: 'B', name: 'Ball', img: 'assets/alphabets/b.png'),
      ItemModel(value: 'C', name: 'Cat', img: 'assets/alphabets/c.png'),
      ItemModel(value: 'D', name: 'Dog', img: 'assets/alphabets/d.png'),
      ItemModel(value: 'E', name: 'Elephant', img: 'assets/alphabets/e.png'),
      ItemModel(value: 'F', name: 'Flag', img: 'assets/alphabets/f.png'),
      ItemModel(value: 'G', name: 'Glass', img: 'assets/alphabets/g.png'),
      ItemModel(value: 'H', name: 'Hat', img: 'assets/alphabets/h.png'),
      ItemModel(value: 'I', name: 'Icecream', img: 'assets/alphabets/i.png'),
      ItemModel(value: 'J', name: 'Jar', img: 'assets/alphabets/j.png'),
      ItemModel(value: 'K', name: 'Kettle', img: 'assets/alphabets/k.png'),
      ItemModel(value: 'L', name: 'Lamp', img: 'assets/alphabets/l.png'),
      ItemModel(value: 'M', name: 'Mat', img: 'assets/alphabets/m.png'),
      ItemModel(value: 'N', name: 'Nose', img: 'assets/alphabets/n.png'),
      ItemModel(value: 'O', name: 'Orange', img: 'assets/alphabets/o.png'),
      ItemModel(value: 'P', name: 'Pencil', img: 'assets/alphabets/p.png'),
      ItemModel(value: 'Q', name: 'Queen', img: 'assets/alphabets/q.png'),
      ItemModel(value: 'R', name: 'Rat', img: 'assets/alphabets/r.png'),
      ItemModel(value: 'S', name: 'Star', img: 'assets/alphabets/s.png'),
      ItemModel(value: 'T', name: 'Tree', img: 'assets/alphabets/t.png'),
      ItemModel(value: 'U', name: 'Umrella', img: 'assets/alphabets/u.png'),
      ItemModel(value: 'V', name: 'Vase', img: 'assets/alphabets/v.png'),
      ItemModel(value: 'W', name: 'Window', img: 'assets/alphabets/w.png'),
      ItemModel(value: 'X', name: 'Xylophone', img: 'assets/alphabets/x.png'),
      ItemModel(value: 'Y', name: 'Yoyo', img: 'assets/alphabets/y.png'),
      ItemModel(value: 'Z', name: 'Zebra', img: 'assets/alphabets/z.png'),
    ];
    items2 = List<ItemModel>.from(items);

    items.shuffle();
    items2.shuffle();
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }

  void resetGame() {
    setState(() {
      initGame();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0) gameOver = true;
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text: '            Score: ',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: '$score',
                style: const TextStyle(
                    fontSize: 22,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: resetGame,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
              ),
              if (!gameOver)
                Row(
                  children: [
                    Spacer(),
                    Column(
                      children: items.map((item) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          child: Draggable<ItemModel>(
                            data: item,
                            childWhenDragging: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 30,
                            ),
                            feedback: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 30,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 30,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Spacer(flex: 2),
                    Column(
                      children: items2.map((item) {
                        return DragTarget<ItemModel>(
                          onAccept: (receivedItem) {
                            if (item.value == receivedItem.value) {
                              setState(() {
                                items.remove(receivedItem);
                                items2.remove(item);
                              });
                              score += 10;
                              item.accepting = false;

                              player.play(AssetSource('true.wav'));
                            } else {
                              setState(() {
                                score -= 5;
                                item.accepting = false;
                                player.play(AssetSource('false.wav'));
                              });
                            }
                          },
                          onWillAccept: (receivedItem) {
                            setState(() {
                              item.accepting = true;
                            });
                            return true;
                          },
                          onLeave: (receivedItem) {
                            setState(() {
                              item.accepting = false;
                            });
                          },
                          builder: (context, acceptedItems, rejectedItems) =>
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: item.accepting
                                        ? Colors.grey[400]
                                        : Colors.grey[200],
                                  ),
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.width / 6.5,
                                  width: MediaQuery.of(context).size.width / 3,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                    item.name,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  )),
                        );
                      }).toList(),
                    ),
                    Spacer(),
                  ],
                ),
              if (gameOver)
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Game Over',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          result(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                    ],
                  ),
                ),
              if (gameOver)
                Container(
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          initGame();
                        });
                      },
                      child: Text(
                        'New Game',
                        style: TextStyle(color: Colors.white),
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }

  //Functions:

  String result() {
    if (score == 100) {
      player.play(AssetSource('success.wav'));
      return 'Awesome!';
    } else {
      player.play(AssetSource('tryAgain.wav'));
      return 'Play again to get better score';
    }
  }
}

class ItemModel {
  final String name;
  final String img;
  final String value;
  bool accepting;
  ItemModel(
      {required this.name,
      required this.value,
      required this.img,
      this.accepting = false});
}
