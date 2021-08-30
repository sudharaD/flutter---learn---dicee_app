import 'package:flutter/material.dart';
import 'dart:math';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         appBar: AppBar(
//           title: Text('Dicee'),
//           backgroundColor: Colors.red,
//         ),
//         body: DicePage(),
//       ),
//     ),
//   );
// }

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var leftDiceNumber = 5;

//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             // flex: 1,
//             child: TextButton(
//               child: Image.asset('images/dice$leftDiceNumber.png'),
//               onPressed: () {
//                 print('Left button got clicked');
//               },
//             ),
//           ),
//           Expanded(
//             // flex: 2,
//             child: TextButton(
//               onPressed: () {
//                 print('Left Button Clicked');
//               },
//               child: Image.asset('images/dice2.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Dicee',
        ),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceButton = 1;

  void randomNumGenerator() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceButton = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumGenerator();
                  });
                },
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumGenerator();
                  });
                },
                child: Image.asset(
                  'images/dice$rightDiceButton.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
