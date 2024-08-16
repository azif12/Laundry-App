import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/WashingPage/washingpage1.dart';
import 'package:laundry_app/constant/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Scaffoldcolor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20.h),
                  Container(
                    width: double.infinity,
                    height: 150.h,
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hello\nJohn Doe',
                          style: GoogleFonts.dmSans(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700,
                            color: black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      right: 10.w,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.house),
                        SizedBox(width: 8.w),
                        Column(
                          children: [
                            Text(
                              'Westhills, Calicut',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      initialPage: 0,
                      height: 130.h,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      viewportFraction: 1.0,
                      aspectRatio: 328 / 130,
                    ),
                    items: [
                      'assests/image1.png',
                      'assests/image1.png',
                      'assests/image1.png',
                    ].map((String imagePath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: 328.w,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage(imagePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                    carouselController: _controller,
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [0, 1, 2].map((int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _controller.animateToPage(index);
                            _currentIndex = index;
                          });
                        },
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 4.0,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      SizedBox(width: 34.w),
                      Container(
                        width: 19.w,
                        height: 19.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assests/Vector.png"),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        "Offers",
                        style: GoogleFonts.dmSans(
                          fontSize: 16.sp,
                          color: blue,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    height: 130.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(color: white,borderRadius: BorderRadius.circular(25)),
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  SizedBox(width: 20.w),
                                  Text(
                                    "Free delivery on every orders for \n6 months",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 14.sp,
                                      color: black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  SizedBox(width: 20.w),
                                  Text(
                                    "₹499",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 21.7.sp,
                                      color: blue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                    ),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WashingScreen()));
                        },
                        child: Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assests/Group 43.png",
                                  height: 100.h,
                                  width: 100,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'washing',
                                  style: GoogleFonts.dmSans(
                                    color: black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, top: 25),
              child: SvgPicture.asset(
                "assests/Frame.svg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
