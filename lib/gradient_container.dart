import 'package:flutter/material.dart';
// import 'package:roll_dice_app/styled_text.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer({required this.colors, super.key});

  // methode dans un constructeur comme images.asset()
  GradientContainer.purple({super.key}) : colors = [];

  void RollDice() {
    // notre code d'execution sera ici ...
  }

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-2.png', width: 200),
            const SizedBox(height: 20),
            TextButton(
              onPressed: RollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
