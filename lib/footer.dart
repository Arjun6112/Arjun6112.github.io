import 'package:flutter/material.dart';
import 'package:flutter_application_portfolio/colors.dart';
import 'package:flutter_application_portfolio/header.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
      VxDevice(
          mobile: VStack(
            [
              "Got a Project ? Lets Chat ".text.white.center.xl2.make(),
              10.heightBox,
              "6112arjun@gmail.com"
                  .text
                  .color(Coolers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolers.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a Project ? Lets Chat ".text.white.center.xl2.make(),
              10.widthBox,
              "6112arjun@gmail.com"
                  .text
                  .color(Coolers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolers.accentColor)
                  .p16
                  .rounded
                  .make()
                  .onTap(() {
                launch(
                    "mailto:6112arjun@gmail.com?subject=Regarding a project &body=Hi%20Arjun");
              })
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16()),
      50.heightBox,
      CustomAppBar(),
      10.heightBox,
      "Thanks for scrolling".richText.semiBold.white.withTextSpanChildren(
          [" ,that's all folks".textSpan.gray500.make()]).make(),
      10.heightBox,
      [
        "Made By Arjun Using Flutter ".text.red500.make(),
        10.widthBox,
        Icon(AntDesign.heart, color: Vx.red500, size: 14)
      ].hStack(crossAlignment: CrossAxisAlignment.center),
    ], crossAlignment: CrossAxisAlignment.center)
        .wFull(context)
        .p16();
  }
}
