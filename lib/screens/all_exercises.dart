import 'package:exercise_app/screens/settings.dart';
import 'package:exercise_app/widgets/bottom_nav_item.dart';
import 'package:exercise_app/widgets/detail_items.dart';
import 'package:flutter/material.dart';

class AllExercise extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "All Exercise",
                            textAlign: TextAlign.center,
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
                          childAspectRatio: 2.5,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,

                          children: <Widget>[

                            ExerciseItem(
                              title: "Push-ups",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Plank",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Deadlifts",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Bridge",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Chair squat",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Knee \npushup",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Stationary \nlunge",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Bird Dog",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Forearm \nplank",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Bicycle \ncrunch",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Pike \npushups",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Superman",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Dead bug",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Side plank",
                              press: () {},
                            ),

                          ],

                        ),
                      ),
                ],
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
                isActive: true,
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
                press: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                        builder: (context) {return Settings();}
                    ),
                  );
                },
              ),
            ],
          ),
      ),
    );
  }
}