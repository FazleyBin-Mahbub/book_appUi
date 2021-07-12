import 'dart:html';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List myImage = ['assets/prematal.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Image.asset(
              //     'assets/sr.png',
              //     width: 180,
              //     height: 90,
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Find Your',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Books',
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(25)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: 'Search what you looking for',
                            hintStyle: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            )),
                        autocorrect: true,
                        cursorColor: Colors.grey[900],
                        // cursorHeight: 20,
                        // maxLength: ,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Your Books are Here'.toUpperCase(),
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  top: 15,
                ),
                child: Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myImage.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: AspectRatio(
                          aspectRatio: 2.2 / 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(myImage[index]),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.1),
                                  ],
                                  begin: Alignment.bottomRight,
                                  stops: [0.2, 0.9],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Text(
                  'All Right Reserved || MD Rabbi Hossen',
                  // overflow: TextOverflow.clip,
                  // textAlign: TextAlign.left,
                  textDirection: TextDirection.rtl,

                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: [
                     
                ]
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}

// child: ListView(
//   scrollDirection: Axis.horizontal,
//   children: [
//     books(image: 'assets/bangla-salat-book_cover.jpg'),
//     SizedBox(
//       width: 10,
//     ),
//     books(image: 'assets/book.png'),
//     SizedBox(
//       width: 10,
//     ),
//     books(image: 'assets/niyamot.png'),
//     SizedBox(
//       width: 10,
//     ),
//     books(image: 'assets/rob.png'),
//     SizedBox(
//       width: 10,
//     ),
//     books(image: 'assets/frndship.jpg'),
//     SizedBox(
//       width: 10,
//     ),
//     books(image: 'assets/mojumdar.jpg'),
//     SizedBox(
//       width: 10,
//     ),
//     books(image: 'assets/frndship.jpg'),
//     SizedBox(
//       width: 10,
//     ),
//     books(image: 'assets/stking.png'),
//     SizedBox(
//       width: 10,
//     ),
//     books(image: 'assets/mojumdar.jpg'),
//   ],
// ),

// Widget books({image}) {
//   return AspectRatio(
//     aspectRatio: 2.2 / 3,
//     child: Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(20),
//         image: DecorationImage(
//           fit: BoxFit.cover,
//           image: AssetImage(image),
//         ),
//       ),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           gradient: LinearGradient(
//               colors: [
//                 Colors.black.withOpacity(.8),
//                 Colors.black.withOpacity(.1),
//               ],
//               begin: Alignment.bottomRight,
//               stops: [0.2, 0.9],

//               ),
//         ),
//       ),
//     ),
//   );
// }
