import 'package:animations/widgets/animated_text.dart';
import 'package:animations/widgets/circle_page.dart';
import 'package:animations/widgets/home_pics.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  EdgeInsets _padding = EdgeInsets.only(top: 790);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      _padding = EdgeInsets.only(top: 20);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomePics(),
              SizedBox(
                height: 30,
              ),
              AnimatedPadding(
                  padding: _padding,
                  duration: Duration(seconds: 1),
                  child: TextAnimated()),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 80, width: 80, child: Circle()),
            ],
          ),
        ),
      ),
    );
  }
}
