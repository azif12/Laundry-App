import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentOption extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;
   final String image;

  const PaymentOption({
    required this.label,
    required this.color,
    required this.textColor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 13.5,
          width: MediaQuery.of(context).size.width / 6,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image)),
            borderRadius: BorderRadius.circular(10.r),
            color: color,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.dmSans(
            color: textColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: textColor,
        ),
    ],
);
}
}