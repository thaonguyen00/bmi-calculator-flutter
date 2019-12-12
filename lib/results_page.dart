import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String resultText;
  final String resultExp;
  final String resultBMI;

  ResultsPage(
      {@required this.resultBMI,
      @required this.resultText,
      @required this.resultExp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  "YOUR RESULT",
                  style: kTextResultStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              myColor: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kTextResultSmallStyle,
                  ),
                  Text(
                    resultBMI,
                    style: kNumberStyle,
                  ),
                  Text(
                    resultExp,
                    style: kTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            text: "RE-CACULATE",
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
