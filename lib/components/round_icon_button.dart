import 'package:bmi_calculator/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    //use something exist and add your touch based to match your design
    return RawMaterialButton(
      elevation: 0,
      child: Icon(
        icon,
        color: themeProvider.isLightTheme ? Colors.black38 : Colors.white,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor:
          themeProvider.isLightTheme ? Color(0xFFe6e7e8) : Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
