import 'package:flutter/material.dart';

class Smallbutton extends StatelessWidget {
  final VoidCallback onTap;
   final String buttoname;
  final double? height;
  final double? width;


  const Smallbutton({super.key, required this.onTap, required this.buttoname, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 40,
        width: width ?? 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(
              color: Color(0x24000000),
              blurRadius: 6.8,
              offset: Offset(0, 4),
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff5894FF), Color(0xff002059)],
          ),
        ),
        child:  Center(
          child: Text(
            buttoname,
            style: TextStyle(
              color: Color(0xffF9FAFB),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}