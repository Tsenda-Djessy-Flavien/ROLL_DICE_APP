import 'dart:math';
import 'package:flutter/material.dart';

// pour ne pas récréer à chaque fois le même objet // performance
final Randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-2.png';
  var currentRollDice = 2;

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      // activeDiceImage = 'assets/images/dice-$diceRoll.png';
      currentRollDice = Randomizer.nextInt(6) + 1;
    });
    print("L'image à changer");
  }

  // Note : vous pouvez mettre toutes les images dans une liste
  // et ensuite les afficher par rapport à leur index qui sera générer par la fun -> Random()

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          // activeDiceImage,
          'assets/images/dice-$currentRollDice.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
