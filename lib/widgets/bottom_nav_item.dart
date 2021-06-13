import 'package:exercise_app/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatelessWidget {
  final String title;
  final String svgSrc;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key, 
    this.title, 
    this.svgSrc, 
    this.press, 
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SvgPicture.asset(svgSrc),
              Text(
                title, 
                style: TextStyle(
                  color: isActive ? KActiveIconColor : KTextColor
                )
              ),
            ]
      ),
        ),
    );
  }
}