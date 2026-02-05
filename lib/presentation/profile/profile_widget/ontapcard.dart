import 'package:flutter/cupertino.dart';

class Ontapcard extends StatelessWidget {
  final Function()? onTap;
  final String title;
  const Ontapcard({super.key, this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        height: 60,
        width: 390,
        decoration: BoxDecoration(
          color: Color(0xff23204f),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Color(0xffFFFFFF), width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Image.asset(
                "assets/image/lolo.png",
                height: 20,
                width: 20,
                color: Color(0xff003FAF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
