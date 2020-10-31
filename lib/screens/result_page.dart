import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiText;
  final String bmiInterpretation;

  const ResultPage({
    @required this.bmiResult,
    @required this.bmiText,
    @required this.bmiInterpretation,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              themeProvider.isLightTheme
                  ? FontAwesomeIcons.moon
                  : FontAwesomeIcons.sun,
            ),
            onPressed: () {
              themeProvider.toggleThemeData();
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: themeProvider.isLightTheme
                    ? kTitleTextStyleL
                    : kTitleTextStyleD,
              ),
            ),
          ),
          Expanded(
            //take more space on the screen, increase the flex
            flex: 7,
            child: ReusableCard(
              color: themeProvider.isLightTheme
                  ? kActiveCardColorL
                  : kActiveCardColorD,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiText.toUpperCase(),
                    style: kBMIRangeTextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        bmiResult,
                        style: themeProvider.isLightTheme
                            ? kBMITextStyleL
                            : kBMITextStyleD,
                      ),
                      Text(
                        'Normal BMI range:',
                        style: kBMIRangeTextStyle2,
                      ),
                      Text(
                        '18.5 - 25 kg/m2',
                        style: kBMIRangeTextStyle3,
                      ),
                    ],
                  ),
                  Text(
                    bmiInterpretation,
                    style: kBMIRangeTextStyle3,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
