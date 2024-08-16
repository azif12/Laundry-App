import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/WashingPage/washingpage2.dart';
import 'package:laundry_app/constant/constant.dart';

class WashingScreen extends StatefulWidget {
  const WashingScreen({Key? key}) : super(key: key);

  @override
  State<WashingScreen> createState() => _WashingScreenState();
}

class _WashingScreenState extends State<WashingScreen> {
  List<Map<String, dynamic>> newmap = [
    {
      'image': 'assests/Component 1.svg',
      'name': 'Shirt',
      'price': 20,
    },
    {
      'image': 'assests/Group 1019.svg',
      'name': 'T-shirt',
      'price': 20,
    },
    {
      'image': 'assests/Group 1086.svg',
      'name': 'Short',
      'price': 10,
    },
    {
      'image': 'assests/Group 1085.svg',
      'name': 'Skirt',
      'price': 20,
    },
    {
      'image': 'assests/Group 1087.svg',
      'name': 'Jacket',
      'price': 40,
    },
    {
      'image': 'assests/Group 1020.svg',
      'name': 'Jeans',
      'price': 40,
    },
    {
      'image': 'assests/Group 1021 (1).svg',
      'name': 'Hoodie',
      'price': 40,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                color: washingcolor,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 22,
                            child: Image.asset(
                              "assests/arrow-left.png",
                              color: black,
                             
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 50, top: 10),
                          child: Text(
                            'Washing',
                            style: GoogleFonts.dmSans(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assests/Group 1082.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Expanded(
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final item = newmap[index];
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                              height: MediaQuery.of(context).size.height / 22,
                              child: SvgPicture.asset(
                                item['image'],
                              ),
                            ),
                            Text(
                              item['name'],
                              style: GoogleFonts.dmSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '₹${item['price']}',
                              style: GoogleFonts.dmSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffECF3F6),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              width: 112.w,
                              height: 38.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      color: maincolor,
                                    ),
                                    padding: EdgeInsets.zero,
                                    constraints: BoxConstraints(),
                                  ),
                                  Text(
                                    "02",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: maincolor,
                                    ),
                                    padding: EdgeInsets.zero,
                                    constraints: BoxConstraints(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 14.h,
                        );
                      },
                      itemCount: newmap.length,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: SizedBox(
                width: 333.w,
                height: 64.h,
                child: SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero, backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '₹110',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '8 Items',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => InstructionsPage() ));
                                  },
                                  child: Text(
                                    'Proceed',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Icon(Icons.arrow_forward, color: Colors.white),
                              ],
                            ),
                          ],
                        ),
                      ),
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
