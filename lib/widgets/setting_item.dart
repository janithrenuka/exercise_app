import 'package:exercise_app/constraints.dart';
import 'package:flutter/material.dart';

// items for meditation

class SettingItem extends StatelessWidget {
  final String title;
  final String icon;
  final Function press;
  final bool isActive;
  const SettingItem({
    Key key, 
    this.title, 
    this.press, 
    this.isActive = false, 
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ClipRRect(
      
      borderRadius: BorderRadius.circular(13),
        child: Container(

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
                padding: const EdgeInsets.symmetric(vertical: 5,),
                
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 42,
                        width: 43,
                        decoration: BoxDecoration(
                          color: KBlueColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),

                    ),

                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      title,
                      style: Theme.of(context)
                            .textTheme
                            .headline5
                            
                    ),
                  ],
                ),
              ),
          ),
        ),
      ),
    );
  }
}
