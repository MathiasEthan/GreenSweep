import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
  
  
  const MyTextField({ 
  super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF133A1B), width: 2.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF011B10), width: 2.0),
                  ),
                  fillColor: const  Color(0xFFE4DEAE),
                  filled: true,
                  labelStyle: const TextStyle(color: Color(0xFF011B10)),
                  hintText: hintText,
                  hintStyle: const TextStyle(color: Color(0xFF133A1B)),
                ),
              ),
            );
  }
}


