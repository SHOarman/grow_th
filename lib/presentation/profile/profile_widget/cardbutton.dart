import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cardbutton extends StatelessWidget {
  final Function onTap;
  final String title;
  final String subtitle;
  final String iconPath;




  const Cardbutton({super.key, required this.onTap, required this.title, required this.subtitle, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();

      },
      child: Container(
        // width: 460,
        height: 78,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xff4732dc), width: 1.5),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Image.asset(
                iconPath,

              ),
            ),
            Positioned(
              top: 10,
              left: 80,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 70,
              child: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 10,
              child: Image.asset(
                "assets/image/Vector (1).png",
                height: 20,
                width: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
