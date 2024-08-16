import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constant/constant.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  int _selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.clear,
                        size: 35,
                      ),
                    ),
                  ),
                  Text(
                    'Are You Sure',
                    style: GoogleFonts.dmSans(
                        fontSize: 34.sp,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    'Do You want to cancel\n This Booking',
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: bottomsheettext),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 160.w,
                        height: 64.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(140.r),
                            color: backgroundColorBlue),
                        child: Center(
                          child: Text(
                            'No',
                            style: GoogleFonts.dmSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: whiteColor),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          showModalBottomSheet(
                            constraints: BoxConstraints(maxHeight: 600.h),
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return SingleChildScrollView(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 24),
                                  constraints: BoxConstraints(
                                    minHeight:
                                        MediaQuery.of(context).size.height *
                                            0.10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.clear,
                                            size: 35,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 45),
                                        child: Text(
                                          'Tell us\n your reason for\n cancelling',
                                          style: GoogleFonts.dmSans(
                                              fontSize: 34.sp,
                                              fontWeight: FontWeight.w700,
                                              color: blackColor),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      Column(
                                        children: [
                                          RadioListTile<int>(
                                            title: Text(
                                              'Change in Plans',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: blackColor),
                                            ),
                                            value: 0,
                                            groupValue: _selectedRadio,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedRadio = value!;
                                              });
                                            },
                                          ),
                                          RadioListTile<int>(
                                            title: Text(
                                              'Emergencies',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: blackColor),
                                            ),
                                            value: 1,
                                            groupValue: _selectedRadio,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedRadio = value!;
                                              });
                                            },
                                          ),
                                          RadioListTile<int>(
                                            title: Text(
                                              'Travel Plans',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: blackColor),
                                            ),
                                            value: 2,
                                            groupValue: _selectedRadio,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedRadio = value!;
                                              });
                                            },
                                          ),
                                          RadioListTile<int>(
                                            title: Text(
                                              'Budget Constraints',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: blackColor),
                                            ),
                                            value: 3,
                                            groupValue: _selectedRadio,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedRadio = value!;
                                              });
                                            },
                                          ),
                                          RadioListTile<int>(
                                            title: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                'Unsatisfactory Service Experience',
                                                style: GoogleFonts.dmSans(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: blackColor),
                                              ),
                                            ),
                                            value: 4,
                                            groupValue: _selectedRadio,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedRadio = value!;
                                              });
                                            },
                                          ),
                                          RadioListTile<int>(
                                            title: Text(
                                              'Availability of Alternatives',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: blackColor),
                                            ),
                                            value: 5,
                                            groupValue: _selectedRadio,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedRadio = value!;
                                              });
                                            },
                                          ),
                                          RadioListTile<int>(
                                            title: Text(
                                              'Personal Health Issues',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: blackColor),
                                            ),
                                            value: 6,
                                            groupValue: _selectedRadio,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedRadio = value!;
                                              });
                                            },
                                          ),
                                          RadioListTile<int>(
                                            title: Text(
                                              'Quality Concerns',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: blackColor),
                                            ),
                                            value: 7,
                                            groupValue: _selectedRadio,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedRadio = value!;
                                              });
                                            },
                                          ),
                                          RadioListTile<int>(
                                            title: Text(
                                              'Change in Laundry Volume',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: blackColor),
                                            ),
                                            value: 8,
                                            groupValue: _selectedRadio,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedRadio = value!;
                                              });
                                            },
                                          ),
                                          RadioListTile<int>(
                                            title: Text(
                                              'Other',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: blackColor),
                                            ),
                                            value: 9,
                                            groupValue: _selectedRadio,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedRadio = value!;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 12.h,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                width: 400.w,
                                                height: 260.h,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16,
                                                    vertical: 24),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      'Booking\n Cancelled',
                                                      style: GoogleFonts.dmSans(
                                                          fontSize: 34,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: cancelcolor),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    SizedBox(
                                                      height: 19.h,
                                                    ),
                                                    Text(
                                                      'Your booking successfully cancelled\n see you next time !',
                                                      style: GoogleFonts.dmSans(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: blackColor,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    SizedBox(height: 30),
                                                    Container(
                                                      width: 333,
                                                      height: 64,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            backgroundColorBlue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(140),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'Back to home',
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: whiteColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Container(
                                          width: 333,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            color: backgroundColorBlue,
                                            borderRadius:
                                                BorderRadius.circular(140),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Submit',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: whiteColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 160.w,
                          height: 64.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(140.r),
                              color: cancelcolor),
                          child: Center(
                            child: Text(
                              'Yes, Cancel',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: whiteColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Text(
        'Cancel Booking',
        style: GoogleFonts.dmSans(
            fontSize: 16.sp, fontWeight: FontWeight.w700, color: cancelcolor),
    ),
);
}
}