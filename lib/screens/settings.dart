import 'package:exercise_app/main.dart';
import 'package:exercise_app/screens/all_exercises.dart';
import 'package:exercise_app/widgets/bottom_nav_item.dart';
import 'package:exercise_app/widgets/setting_item.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  final Function press;

  const Settings({
    Key key, 
    this.press
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[

          SafeArea(
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[

                        Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                          child: IconButton(
                              icon: new Icon(Icons.arrow_back),
                              color: Colors.black, 
                              onPressed: () { 
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) {return HomeScreen();})
                                );
                              },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "Settings",
                            style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                     fontWeight: FontWeight.w900
                                    ),
                          ),
                        ),
                      ],
                    ),

                      Expanded(
                              child: GridView.count(
                                
                              crossAxisCount: 2,
                              childAspectRatio: 1.75,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,

                                children: <Widget>[
                                  
                                  SettingItem(
                                    title: "Setting 01",
                                    press: () {},
                                  ),

                                  SettingItem(
                                    title: "Setting 02",
                                    press: () {},
                                  ),

                                  SettingItem(
                                    title: "Setting 03",
                                    
                                    press: () {},
                                  ),

                                  SettingItem(
                                    title: "Setting 04",
                                    press: () {},
                                  ),

                                  SettingItem(
                                    title: "Setting 05",
                                    press: () {},
                                  ),

                                  SettingItem(
                                    title: "Setting 06",
                                    press: () {},
                                  ),

                                ],

                              )
                      ),

                  ],

                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 65,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              BottomNavItem(
                title: "Today",
                svgSrc: "assets/icons/calendar.svg",
              ),
              
              BottomNavItem(
                title: "All Exercises",
                svgSrc: "assets/icons/gym.svg",
                press: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                        builder: (context) {return AllExercise();}
                    ),
                  );
                },
              ),
              
              BottomNavItem(
                title: "Settings",
                svgSrc: "assets/icons/Settings.svg",
                isActive: true,
              ),
            ],
          ),
      ),  
    );
  }
}