import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAnimated extends StatefulWidget {
  const TextAnimated({Key? key}) : super(key: key);

  @override
  _TextAnimatedState createState() => _TextAnimatedState();
}

class _TextAnimatedState extends State<TextAnimated>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        curve: Curves.easeIn,
        duration: Duration(seconds: 2),
        builder: (context, _val, child) {
          return Column(
            children: [
              Opacity(
                opacity: _val as double,
                child: Container(
                  width: 300,
                  child: Text(
                    'Find a perfect job match.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sansita(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 40),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Opacity(
                opacity: _val,
                child: Container(
                  width: 200,
                  child: Text(
                    'One place with the best job companies in tech',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sansita(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              )
            ],
          );
        });
  }
}
