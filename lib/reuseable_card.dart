import 'package:flutter/material.dart';

class ReuseableCards extends StatelessWidget {
  const ReuseableCards(
      {super.key, required this.colour, this.cardChild, this.onPress}); //for initializing a property without required keyword beside the variable type name '?' should be added to make it required free.
  final Color colour;
  final Widget? cardChild;          //like what has been used here & also the next line.
  final VoidCallback? onPress;     //here Function is replaced with VoidCallback
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
