import 'package:flutter/material.dart';
import 'package:laundry_app/constant/constant.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: maincolor,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height / 2.23,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assests/Frame (1).png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
