import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_card.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
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
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.0',
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Column(children: [
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
                    'Your BMI result is quite Low You should eat more.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
