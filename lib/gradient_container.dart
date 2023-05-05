import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

var startAligment = Alignment.topLeft;
var endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(child: StyledText('Hello World !')),
    );
  }
}
