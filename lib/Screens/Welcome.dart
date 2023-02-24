import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  getSessionValues() async {}

  Future<bool> showExitPopup() async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Exit App',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            content: const Text(
              'Do you want to exit an App?',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return OverflowBar(
      children: [
        WillPopScope(
          onWillPop: showExitPopup,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Scaffold(
                  backgroundColor: Colors.transparent,
                  // backgroundColor: Color(0XFFFFA893C),
                  body: SizedBox(
                    width: size.width,
                    height: size.height,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            width: size.width,
                            height: size.height,
                            child: Column(
                              children: [
                                /// IMG
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(15, 40, 15, 10),
                                  width: size.width,
                                  height: size.height / 1.8,
                                  child: Image.asset(
                                    'assets/Tiny_Time.gif',
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                /// TITLE TEXT
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25, bottom: 15),
                                ),

                                /// SUBTITLE TEXT
                              ],
                            ),
                          ),
                        ),

                        /// ---------------------------
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 60),
                                  width: size.width / 2.5,
                                  height: size.height / 13,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        // color: MyColors.btnBorderColor,
                                        color: Colors.blue,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(15.0),
                                    onTap: () {
                                      Navigator.pushNamed(context, 'login');
                                    },
                                    // splashColor: Colors.blue,
                                    child: Center(
                                      child: Text("Skip",
                                          style: textTheme.headline3),
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(8.0)),
                                Container(
                                  margin: const EdgeInsets.only(top: 60),
                                  width: size.width / 2.5,
                                  height: size.height / 13,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(15.0),
                                    onTap: (() {
                                      Navigator.pushNamed(context, 'intro');
                                    }),
                                    // splashColor: Colors.blue,
                                    child: Center(
                                      child: Text("Start Tour",
                                          style: textTheme.headline3),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
