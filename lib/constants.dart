import 'package:flutter/material.dart';

//k in each var is stands to the word constant, so whenever
// we use any var from here in any page we will immediately know
//it is constant var by looking to the first letter in the name

//L == for Light theme
//D == for Dark theme
const kActiveCardColorL = Color(0xFFFFFFFF);
const kActiveCardColorD = Color(0xFF1D1E33);
const kInactiveCardColorL = Color(0xFFe6e7e8);
const kInactiveCardColorD = Color(0xFF11132A);
const kLightShadow = BoxShadow(
    color: Colors.black12,
    spreadRadius: 1,
    blurRadius: 5,
    offset: Offset(0, 2));
const kDarkShadow = BoxShadow(
    color: Color(0xff0c0e1f),
    spreadRadius: 1,
    blurRadius: 5,
    offset: Offset(0, 2));

const kLargeTextStyleL = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF4d5468),
);
const kLargeTextStyleD = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kTitleTextStyleL = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF4d5468),
);
const kTitleTextStyleD = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

//same for light and dark theme
const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFF5ccae0);
// final kActiveCardColor =
//     kThemeProvider.isLightTheme ? Color(0xFFd5d6d7) : Color(0xFF1D1E33);
// final kInactiveCardColor =
//     kThemeProvider.isLightTheme ? Color(0xFFFFFFFF) : Color(0xFF11132A);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
  color: Color(0xFF5ccae0),
);

const kBMIRangeTextStyle = TextStyle(
  fontSize: 26.0,
  color: Color(0xFF24D876),
  fontWeight: FontWeight.bold,
);

const kBMIRangeTextStyle2 = TextStyle(
  fontSize: 22.0,
  color: Color(0xFF8D8E98),
  fontWeight: FontWeight.bold,
);

const kBMIRangeTextStyle3 = TextStyle(
  fontSize: 22.0,
);

const kBMITextStyleL = TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF4d5468),
);

const kBMITextStyleD = TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
