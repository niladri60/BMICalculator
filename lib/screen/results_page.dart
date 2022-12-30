import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/components/reuseable_card.dart';
import 'package:bmi/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCards(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                      color: resultText == 'Overweight'
                          ? Colors.redAccent
                          : resultText == 'Normal'
                              ? const Color(0xFF24D876)
                              : Colors.yellow,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: const TextStyle(
                        fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Column(children: const [
                    Text(
                      'Normal BMI range:',
                      style: klabelTextStyle,
                    ),
                    Text(
                      '18,5 - 25 kg/m2',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ]),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE - CALCULATE YOUR BMI'),
        ],
      ),
    );
  }
}
