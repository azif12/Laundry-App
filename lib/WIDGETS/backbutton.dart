import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Backbutton extends StatelessWidget {
  final VoidCallback? onBackPressed;

  const Backbutton({
    Key? key,
    this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 24,
      child: GestureDetector(
        onTap: () {
          if (onBackPressed != null) {
            onBackPressed!();
          } else {
            Navigator.pop(context);
          }
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 10,
          height: MediaQuery.of(context).size.height / 22,
          child: SvgPicture.asset(
            "assests/arrow-left.svg",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
