import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItemScreen extends StatefulWidget {
  const ListItemScreen({Key? key}) : super(key: key);

  @override
  _ListItemScreenState createState() => _ListItemScreenState();
}

class _ListItemScreenState extends State<ListItemScreen> {
  EdgeInsets _padding = EdgeInsets.only(top: 700);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        _padding = EdgeInsets.only(left: 16.0, right: 16, top: 16);
      });
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedPadding(
                duration: Duration(seconds: 1),
                padding: _padding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 34,
                    ),
                    Container(
                      height: 50,
                      width: 50,
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
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, top: 10, right: 80),
                    child: Container(
                      child: Padding(
                          padding: EdgeInsets.only(left: 35, top: 30),
                          child: Text(
                            'Find your perfect Job',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.sansita(
                                fontSize: 40,
                                color: Colors.black,
                                wordSpacing: 5,
                                fontWeight: FontWeight.w100),
                          )),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Color(0xfff0f287),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 60,
                      left: 270,
                      child: Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(26)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.search_outlined,
                              size: 40,
                            ),
                            Icon(
                              Icons.mic,
                              size: 40,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, top: 20, bottom: 10, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Job',
                      style: GoogleFonts.sansita(
                          fontSize: 23, color: Colors.black),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        'see all',
                        style: GoogleFonts.sansita(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.withOpacity(0.2)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(Icons.thumb_up_alt,
                                  size: 22, color: Color(0xff8331D6)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              padding: EdgeInsets.all(13),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16.0, right: 70),
                              child: Text(
                                'Jamal Tech',
                                style: GoogleFonts.sansita(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Apply',
                                style: GoogleFonts.sansita(
                                    color: Colors.white, fontSize: 18),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          'Mobile Developer',
                          style: GoogleFonts.sansita(
                              fontSize: 25,
                              wordSpacing: 5,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 5),
                        child: Text(
                          'Lagos, Nigeria',
                          style: GoogleFonts.sansita(
                            fontSize: 20,
                            wordSpacing: 5,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      )
                    ],
                  ),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Color(0xff8331D6).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(26)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, top: 20, bottom: 10, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearby Job ',
                      style: GoogleFonts.sansita(
                          fontSize: 23, color: Colors.black),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        'see all',
                        style: GoogleFonts.sansita(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.withOpacity(0.2)),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16, bottom: 15),
                child: Material(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.green),
                              child: Icon(
                                Icons.wifi,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Product Designer',
                                style: GoogleFonts.sansita(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Sillicon Valley, California',
                                style: GoogleFonts.sansita(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 23,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                  ),
                  elevation: 3,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16, bottom: 15),
                child: Material(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purpleAccent),
                              child: Icon(
                                Icons.ac_unit_sharp,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Python Developer',
                                style: GoogleFonts.sansita(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Rwanda, Kenya',
                                style: GoogleFonts.sansita(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 23,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                  ),
                  elevation: 3,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16, bottom: 15),
                child: Material(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepPurple),
                              child: Icon(
                                Icons.adb_sharp,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Frontend Developer',
                                style: GoogleFonts.sansita(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Enugu, Alaigbo',
                                style: GoogleFonts.sansita(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 23,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                  ),
                  elevation: 3,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
