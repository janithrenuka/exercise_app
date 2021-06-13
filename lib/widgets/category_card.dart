import 'package:exercise_app/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {    // home page category widget card
  final String svgSrc;
  final String title;
  final Function press;
  const CategoryCard({
    Key key,
    this.svgSrc,
    this.title, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
        child: Container(
        //padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: KShadowColor,
          )],
        ),

        child: Material(
          color: Colors.transparent,
          child: InkWell( //add hover color on tap
            onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                children: <Widget>[
                  Spacer(),
                  SvgPicture.asset(svgSrc),
                  Spacer(),
                  Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 14.25, fontWeight: FontWeight.bold),
                  )
                ],
            ),
              ),
          ),
        ),

        // child: new Column(
        //   children: <Widget>[
        //     new Container(
        //       margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        //       child: SvgPicture.asset("assets/icons/Hamburger.svg"),
        //       height: 80,
        //     ),
        //     new Container(
        //       alignment: Alignment.bottomCenter,
        //       child: new Text(
        //           "Diet Recommendation",
        //           style: TextStyle(
        //             fontWeight: FontWeight.bold,
        //           ),
        //       ),
        //     ),
        //   ],
        // ),
        
        
      ),
    );
  }
}