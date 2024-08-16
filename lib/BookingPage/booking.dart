import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';

class ConfirmBooking extends StatelessWidget {
  const ConfirmBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 160.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 0.6,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assests/image 3 (2).png'))),
            ),
            SizedBox(
              height: 43.h,
            ),
            Text(
              'Your Booking is\n Confirmed',
              style: GoogleFonts.dmSans(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: whiteColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 140.h,
            ),
            Center(
              child: SizedBox(
                width: 333.w,
                height: 64.h,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(whiteColor)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ConfirmBooking();
                    }));
                  },
                  child: Text(
                    'Back To Home',
                    style: GoogleFonts.dmSans(
                      color: maincolor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            
          ],
        ),
    ),
);
}
}