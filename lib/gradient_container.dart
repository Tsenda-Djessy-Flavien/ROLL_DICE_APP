import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer({required this.colors, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // colors: [
          //   Color.fromARGB(255, 26, 2, 80),
          //   Color.fromARGB(255, 45, 7, 98),
          // ],
          colors: colors,
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(child: StyledText('Hello World !')),
    );
  }
}
