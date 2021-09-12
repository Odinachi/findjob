import 'package:animations/screens/list_item_screen.dart';
import 'package:flutter/material.dart';

class CenterButton extends StatefulWidget {
  const CenterButton({Key? key}) : super(key: key);

  @override
  _CenterButtonState createState() => _CenterButtonState();
}

class _CenterButtonState extends State<CenterButton>
    with SingleTickerProviderStateMixin {
  EdgeInsets _padding = EdgeInsets.all(8);
  late Animation<EdgeInsets> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(seconds: 5), vsync: this);

    _animation =
        EdgeInsetsTween(begin: EdgeInsets.all(20), end: EdgeInsets.all(15))
            .animate(_controller)
              ..addListener(() {
                setState(() {
                  _padding = _animation.value;
                });
              });

    _controller.forward();
    _controller.repeat(reverse: false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>ListItemScreen()));},
      child: Padding(
        padding: _padding,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(
            Icons.arrow_forward,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
