import  'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final String placeholderText;
  final Function()? onTap;
  const MyButton({
    super.key,
    required this.placeholderText,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context){
    return GestureDetector(
    onTap: onTap,
      child: Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFF133A1B),
      ),
      child: Center(
        child: Text(placeholderText, style: const TextStyle(fontSize: 16, color: Color(0xFFFEFAE0), fontWeight: FontWeight.bold), textAlign: TextAlign.center,) ,
      ),
      ),
    );
  }
}