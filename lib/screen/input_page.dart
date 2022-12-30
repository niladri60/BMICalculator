import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reuseable_card.dart';
import '../components/icon_content.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import '../components/roundIcon_button.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCards(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                        // print('Male gender is selected.');
                      },
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      colour: selectedGender == Gender.male
                          ? kactiveCardColor
                          : kinactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReuseableCards(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                        // print('Female gender is selected.');
                      },
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      colour: selectedGender == Gender.female
                          ? kactiveCardColor
                          : kinactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseableCards(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: klabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          'cm',
                          style: klabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        activeTrackColor: Colors.white,
                        inactiveTickMarkColor: const Color(0xFF8D8E98),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 210.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
                colour: kactiveCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCards(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: klabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      colour: kactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReuseableCards(
                      colour: kactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: klabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'CALCULATE YOUR BMI',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
