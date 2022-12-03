import 'package:flutter/material.dart';




class ConfirmationButton extends StatelessWidget {
  
  final Widget wName;
  Color color;
  ConfirmationButton({required this.wName, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: wName,
          ),
        ),
        width: double.infinity,
      ),
    );
  }
}