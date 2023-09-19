import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget{
  final Function()? onTap;
  final String tileText;
  final Image tileIcon;
  const SquareTile({
    super.key,
    required this.onTap,
    required this.tileText,
    required this.tileIcon,
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFFDDA15E),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image (image: tileIcon.image, width: 50, height: 50,),
            Text(tileText, style: const TextStyle(fontSize: 16, color: Color(0xFFFEFAE0), fontWeight: FontWeight.bold), textAlign: TextAlign.center,) ,
          ],
        ),
      ),
    );
  }

}