import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  //pass function as argument to this class
  final Function onPress;

  ReusableCard({
    @required this.color,
    this.cardChild,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            themeProvider.isLightTheme ? kLightShadow : kDarkShadow,
          ],
        ),
      ),
    );
  }
}
