import 'package:cinemaapp/utilities/app_font.dart';
import 'package:flutter/material.dart';

import '../utilities/app_color.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function onPress;

  const AppButton({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 7 / 100,
        width: MediaQuery.of(context).size.width * 90 / 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: <Color>[
              Color(0xff78B9E1),
              Color(0xff7A89B0),
              Color(0xff7C5579),
              Color(0xff7E3658),
              Color(0xff7F0B2B),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 15,
              color: AppColor.secondryColor,
              fontFamily: AppFont.fontFamily,
              fontWeight: FontWeight.w600),
        ),
      ),

     
    );
  }
}
