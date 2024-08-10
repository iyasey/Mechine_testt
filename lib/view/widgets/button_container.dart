import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  final String txt;
  const ButtonContainer({required this.txt,
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.07,
      decoration: BoxDecoration(
          color: Colors.yellow[700], borderRadius: BorderRadius.circular(8.0)),
      child:  Center(
          child: Text(
        txt,
        style: const TextStyle(fontWeight: FontWeight.bold),
      )),
    );
  }
}
