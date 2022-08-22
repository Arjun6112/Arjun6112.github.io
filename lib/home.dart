import 'package:flutter/material.dart';
import 'package:flutter_application_portfolio/colors.dart';
import 'package:flutter_application_portfolio/header.dart';
import 'package:flutter_application_portfolio/middle.dart';
import 'package:velocity_x/velocity_x.dart';

import 'footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        // HeaderScreen(),
        HeaderScreen(),
        if (context.isMobile) IntroductionWidget().p16(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
