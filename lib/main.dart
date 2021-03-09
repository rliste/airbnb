import 'package:airbnb_rigel/src/views/home.dart';
import 'package:airbnb_rigel/src/views/intro.dart';

import 'package:flutter/material.dart';

import 'package:sizer/sizer_util.dart';

void main() {
  //initializeDateFormatting().then((_) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(
          //return OrientationBuilder
          builder: (context, orientation) {
            //initialize SizerUtil()
            SizerUtil().init(constraints, orientation); //initialize SizerUtil
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Home(),
            );
          },
        );
      },
    );
  }
}
