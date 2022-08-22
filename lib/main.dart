import 'package:flutter/material.dart';
import 'package:flutter_application_portfolio/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Coolers.accentColor,
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: HomeScreen(),
    );
  }
}
