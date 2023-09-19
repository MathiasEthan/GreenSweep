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
              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Color(0xFF283618), width: 2.0),

                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF283618), width: 2.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF606C38), width: 2.0),
                  ),

                  fillColor: const  Color(0xFFB7BF96),
                  filled: true,
                  labelStyle: const TextStyle(color: Color(0xFF606C38)),
                  hintText: hintText,
                  hintStyle: const TextStyle(color: Color(0xFF283618)),
                ),
              ),
            );

  }
}


