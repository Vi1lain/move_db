import 'package:flutter/material.dart';

abstract class AppButtomStyle {

  static final TextStyle textStyleBlack = const TextStyle(fontSize: 16, color: Colors.black);
  static final  TextStyle textStyleLightBlue = const TextStyle(color: Colors.lightBlue);


  static final ButtonStyle linkButtomFilled = ButtonStyle(
      textStyle: MaterialStatePropertyAll(
          TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
      backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)))
  );

  static final ButtonStyle linkButtomOutlined = ButtonStyle(
      //textStyle: MaterialStatePropertyAll(TextStyle(color: Colors.lightBlue)),
      side: MaterialStatePropertyAll(
          BorderSide(color: Colors.lightBlue)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10))));
}
