import 'package:flutter/material.dart';


class FormFieldWidget extends StatelessWidget {
  
  final String label;

  FormFieldWidget({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(15)
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(
            color: Colors.grey.shade600
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade800,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade800,
              width: 2.0
            ),
            borderRadius: BorderRadius.all(Radius.circular(15))
          ), 
        ),
      ),
    );
  }
}