import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laundry_app/Homepage/homepage.dart';
import 'package:laundry_app/NotificationsPage/Notification.dart';
import 'package:laundry_app/OrdersPage/Orders.dart';
import 'package:laundry_app/ProfilePage/Profilepage.dart';

class IntexPage extends StatefulWidget {
  const IntexPage({super.key});

  @override
  State<IntexPage> createState() => _IntexPageState();
}

class _IntexPageState extends State<IntexPage> {
  int _selectedIndex = 0;
  final pages = [
    HomePage(),
    OrdersPage(),
    NotificationPage(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: pages,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60.h,
              margin: EdgeInsets.only(bottom: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    child: SvgPicture.asset(
                      _selectedIndex == 0
                          ? "assests/home2.svg"
                          : "assests/home1.svg",
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    child: SvgPicture.asset(
                      _selectedIndex == 1
                          ? "assests/Property 1=bold, Property 2=calendar-2 (1).svg"
                          : "assests/Property 1=bold, Property 2=calendar-2.svg",
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    child: SvgPicture.asset(
                      _selectedIndex == 2
                          ? "assests/Property 1=bold, Property 2=notification (1).svg"
                          : "assests/Property 1=bold, Property 2=notification.svg",
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                    child: SvgPicture.asset(
                      _selectedIndex == 3
                          ? "assests/vuesax.svg"
                          : "assests/user2.svg",
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
