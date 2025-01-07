import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random(); // Initializing a value randomized to save the Random number generated from the Random function.
// we are initializing it outside the class so that it will be mounted only once. 
// No need to initiate again and again at each call.

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assets/images/dice-2.png';   ////   Initialize a variable directly from the assetsName (method-1)
  int currentDiceRoll = 2; // Initialize a variable as an integer (method-2)

  void rollDice() {
      // var diceRoll = randomizer.nextInt(6) + 1;
      setState(() {
      //activeDiceImage = 'assets/images/dice-$diceRoll.png';   ////   You can change this to other dice images as per logic
      currentDiceRoll = randomizer.nextInt(6) + 1; // Saving/setting the state of the changed random value into currentDiceRoll which generate random numbers from 1 to 6.
    });
    
    print('Changing image...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png', // Rendering the image dynamically as per the currentDiceRoll, 
          // The names of images are dice-1, dice-2 ... so on, 
          // So, Here we are just changing the "number" dynamically like dice-"number" to render/display different images as per random number
          width: 200,
        ),
        const SizedBox(height:60), // SizeBox is used for putting gaps between two elements, set the height value as you need.
        TextButton(
          onPressed: rollDice, // onPress is a inbuilt function used when we want to have some action/event to trigger on press
          // Here rollDice function we are calling on press of the TextButton,
          // In which we are updating the state using setState hook to update the currentDiceRoll.
          // And the image as per the changed value is displayed.
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 35,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}

