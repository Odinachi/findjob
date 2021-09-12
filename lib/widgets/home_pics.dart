import 'package:flutter/material.dart';

class HomePics extends StatefulWidget {
  const HomePics({Key? key}) : super(key: key);

  @override
  _HomePicsState createState() => _HomePicsState();
}

class _HomePicsState extends State<HomePics> {
  double _2top = 0;
  double _2left = 0;
  double _3top = 0;
  double _3left = 130;
  double _4top = 350;
  double _4left = 130;
  double _5top = 290;
  double _5left = 300;
  double _1top = 34;
  double _1left = 130;
  double _6top = 34;
  double _6left = 330;
  double _7top = 0;
  double _7left = 230;
  double _8top = 570;
  double _8left = 120;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //
    // });

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _2top = 200;
        _2left = 5;

        _3top = 140;
        _3left = 130;

        _4top = 270;
        _4left = 130;

        _5top = 230;
        _5left = 230;

        _1top = 50;
        _1left = 50;

        _6top = 130;
        _6left = 250;

        _7top = 60;
        _7left = 180;

        _8left = 110;
        _8top = 250;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Container(
        child: Stack(
          children: [
            AnimatedPadding(
              duration: Duration(seconds: 1),
              padding: EdgeInsets.only(left: _1left, top: _1top),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("images/pics1.jpeg"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              top: _2top,
              left: _2left,
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "images/pics2.jpeg",
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              top: _3top,
              left: _3left,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "images/pics3.jpeg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              top: _4top,
              left: _4left,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "images/pics4.jpeg",
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              top: _5top,
              left: _5left,
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "images/pics5.jpeg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              top: _6top,
              left: _6left,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "images/pics6.jpeg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              top: _7top,
              left: _7left,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "images/pics7.jpeg",
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              top: _8top,
              left:_8left,
              child: Container(
                height: 15,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple
                ),
              ),
            )
          ],
        ),
        padding: EdgeInsets.all(10),
        height: 400,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xfff0f287)),
      ),
      padding: EdgeInsets.all(20),
    );
  }
}
