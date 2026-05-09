import 'package:flutter/material.dart';
import 'package:my_app/data/ui/themedata.dart';

class Uihepler {

  static AppBar appBars({required VoidCallback callback}) {

    return AppBar(
      title: Text(
        "yugsoni.com",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: themeDatas.whiteColor,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          fontFamily: 'poppins',
        ),
      ),
      centerTitle: true,
      backgroundColor: themeDatas.mainColor,
    );
  }
}
