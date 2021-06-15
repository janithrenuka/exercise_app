import 'package:exercise_app/constraints.dart';
import 'package:exercise_app/screens/all_exercises.dart';
import 'package:exercise_app/screens/settings.dart';
import 'package:exercise_app/widgets/bottom_nav_item.dart';
import 'package:exercise_app/widgets/detail_items.dart';
import 'package:exercise_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


// Diet Recommendation

class DietDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[

            Container(
                height: size.height * .45, // this container height is 45% of total app height
                decoration: BoxDecoration(
                  color: KBlueLightColor,
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/diet.jpg"), // add image
                    fit: BoxFit.fitWidth 
                  ),
                ),
            ),

            SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20), // add padding horizontal
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      Align( // add menu image align 
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.center,
                            height: 52,  //image height & width
                            width: 52,
                            decoration: BoxDecoration(       // menu icon doesnt work
                              //color: Colors.black,
                              color: Color(0xFFF2BEA1),
                              shape: BoxShape.circle, // crop image circly
                            ),
                            child: SvgPicture.asset("assets/icons/menu.svg"), // href image
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.06,
                      ),
                      Text(
                        "Diet \nRecommendation",
                        style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(fontWeight: FontWeight.w900),
                      ),

                      Text(
                        "30 DAYS Course",
                        style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),
                      ),
                    
                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "Meditation",
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .headline4
                      //           .copyWith(
                      //               fontWeight: FontWeight.w800,
                      //           ),
                      //   ),
                      // ),

                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "3-10 MIN Course",
                      //       style: Theme.of(context)
                      //           .textTheme                                   //my code 
                      //           .headline6
                      //           .copyWith(
                      //               fontWeight: FontWeight.w900,
                      //               fontSize: 18
                      //           ),
                      //   ),
                      // ),

                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "Live happier and healthier by learning \nthe fundementals of meditation \nand mind fullness",
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .headline6
                      //           .copyWith(
                      //               fontWeight: FontWeight.w700,
                      //               fontSize: 15
                      //           ),
                      //   ),
                      // ),

                      SizedBox(
                        width: 200,
                        height: 105,
                        child: SearchBar()
                      ),
                      
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 2.5,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,

                          children: <Widget>[

                            DietItem(
                              title: "Day 01",
                              press: () {},
                            ),

                            DietItem(
                              title: "Day 02",
                              press: () {},
                            ),

                            DietItem(
                              title: "Day 03",
                              press: () {},
                            ),

                            DietItem(
                              title: "Day 04",
                              press: () {},
                            ),

                            DietItem(
                              title: "Day 05",
                              press: () {},
                            ),

                            DietItem(
                              title: "Day 06",
                              press: () {},
                            ),

                          ],

                        ),
                      ),
                        Center(
                          child: Icon(
                            Icons.expand_more,
                          ),
                        ),
                    ]
                  ),
              ),
            )
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


// kegel exercises

class KExerciseDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[

            Container(
                height: size.height * .45, // this container height is 45% of total app height
                decoration: BoxDecoration(
                  color: KBlueLightColor,
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/exercise.jpg"), // add image
                    fit: BoxFit.fitWidth
                    
                  ),
                ),
            ),

            SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20), // add padding horizontal
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      Align( // add menu image align 
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.center,
                            height: 52,  //image height & width
                            width: 52,
                            decoration: BoxDecoration(       // menu icon doesnt work
                              //color: Colors.black,
                              color: Color(0xFFF2BEA1),
                              shape: BoxShape.circle, // crop image circly
                            ),
                            child: SvgPicture.asset("assets/icons/menu.svg"), // href image
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.06,
                      ),
                      Text(
                        "Kegel \nExercises",
                        style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(fontWeight: FontWeight.w900),
                      ),

                      Text(
                        "30 DAYS Course",
                        style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),
                      ),
                    
                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "Meditation",
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .headline4
                      //           .copyWith(
                      //               fontWeight: FontWeight.w800,
                      //           ),
                      //   ),
                      // ),

                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "3-10 MIN Course",
                      //       style: Theme.of(context)
                      //           .textTheme                                   //my code 
                      //           .headline6
                      //           .copyWith(
                      //               fontWeight: FontWeight.w900,
                      //               fontSize: 18
                      //           ),
                      //   ),
                      // ),

                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "Live happier and healthier by learning \nthe fundementals of meditation \nand mind fullness",
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .headline6
                      //           .copyWith(
                      //               fontWeight: FontWeight.w700,
                      //               fontSize: 15
                      //           ),
                      //   ),
                      // ),

                      SizedBox(
                        width: 200,
                        height: 105,
                        child: SearchBar()
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                            "Pelvic muscle training, or Kegels, is the practice of contracting and" 
                            "relaxing your pelvic floor muscles. You may benefit from Kegels if you" 
                            "experience urine leakage from sneezing, laughing, jumping, or coughing," 
                            "or have a strong urge to urinate just before losing a large amount of urine.",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(fontSize: 14.25, fontWeight: FontWeight.bold),
                        ),
                      ),

                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 2.5,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,

                          children: <Widget>[

                            ExerciseItem(
                              title: "Squat",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Deadlift",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Reverse \nLunge",
                              press: () {},
                            ),

                            ExerciseItem(
                              title: "Bent-over \nrow",
                              press: () {},
                            ),

                          ],

                        ),
                      ),
                        
                    ]
                  ),
              ),
            )
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


// Meditation

class MediDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[

            Container(
                height: size.height * .45, // this container height is 45% of total app height
                decoration: BoxDecoration(
                  color: KBlueLightColor,
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/meditation_bg.png"), // add image
                    fit: BoxFit.fitWidth 
                  ),
                ),
            ),

            SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,), // add padding horizontal
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      Align( // add menu image align 
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.center,
                            height: 52,  //image height & width
                            width: 52,
                            decoration: BoxDecoration(       // menu icon doesnt work
                              //color: Colors.black,
                              color: Color(0xFFF2BEA1),
                              shape: BoxShape.circle, // crop image circly
                            ),
                            child: SvgPicture.asset("assets/icons/menu.svg"), // href image
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      Text(
                        "Meditation",
                        style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(fontWeight: FontWeight.w900),
                      ),

                      Text(
                        "3-10 MIN Course",
                        style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),
                      ),

                      // Text(
                      //   "Live happier and healthier by learning the fundementals of meditation and mind fullness",
                      //   style: Theme.of(context)
                      //           .textTheme
                      //           .headline5
                      //           .copyWith(
                      //               fontWeight: FontWeight.bold,
                      //               fontSize: 15
                      //           ),
                      // ),

                      SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.6,
                        child: Text(
                        "Live happier and healthier by learning the fundementals of meditation and mind fullness"
                        ),
                      ),
                      

                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "Meditation",
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .headline4
                      //           .copyWith(
                      //               fontWeight: FontWeight.w800,
                      //           ),
                      //   ),
                      // ),

                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "3-10 MIN Course",
                      //       style: Theme.of(context)
                      //           .textTheme                                   //my code 
                      //           .headline6
                      //           .copyWith(
                      //               fontWeight: FontWeight.w900,
                      //               fontSize: 18
                      //           ),
                      //   ),
                      // ),

                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "Live happier and healthier by learning \nthe fundementals of meditation \nand mind fullness",
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .headline6
                      //           .copyWith(
                      //               fontWeight: FontWeight.w700,
                      //               fontSize: 15
                      //           ),
                      //   ),
                      // ),

                      SizedBox(
                        width: 200,
                        height: 105,
                        child: SearchBar()
                      ),
                      
                      Expanded(
                        
                        child: GridView.count(
                          
                          crossAxisCount: 2,
                          childAspectRatio: 2.5,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,

                          children: <Widget>[
                            
                            MediItem(
                              title: "Session 01",
                              press: () {},
                            ),

                            MediItem(
                              title: "Session 02",
                              press: () {},
                            ),

                            MediItem(
                              title: "Session 03",
                              press: () {},
                            ),

                            MediItem(
                              title: "Session 04",
                              press: () {},
                            ),

                            MediItem(
                              title: "Session 05",
                              press: () {},
                            ),

                            MediItem(
                              title: "Session 06",
                              press: () {},
                            ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Meditation",
                                  style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(fontWeight: FontWeight.w900),
                                ),
                              ),
                          ],

                        )
                      ),
                    ],
                  ),
              ),
            )
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

// Yoga

class YogaDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[

            Container(
                height: size.height * .45, // this container height is 45% of total app height
                decoration: BoxDecoration(
                  color: KBlueLightColor,
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/yoga_women.png"), // add image
                    fit: BoxFit.fitWidth 
                  ),
                ),
            ),

            SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20), // add padding horizontal
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      Align( // add menu image align 
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.center,
                            height: 52,  //image height & width
                            width: 52,
                            decoration: BoxDecoration(       // menu icon doesnt work
                              //color: Colors.black,
                              color: Color(0xFFF2BEA1),
                              shape: BoxShape.circle, // crop image circly
                            ),
                            child: SvgPicture.asset("assets/icons/menu.svg"), // href image
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.09,
                      ),
                      Text(
                        "Yoga",
                        style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(fontWeight: FontWeight.w900),
                      ),
                      
                      Text(
                        "3-10 MIN Course",
                        style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),
                      ),

                      
                      // SizedBox(height: 5),
                      // SizedBox(
                      //   width: size.width * 0.6,
                      //   child: Text(
                      //   "Live "
                      //   ),
                      // ),
                      

                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "Meditation",
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .headline4
                      //           .copyWith(
                      //               fontWeight: FontWeight.w800,
                      //           ),
                      //   ),
                      // ),

                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "3-10 MIN Course",
                      //       style: Theme.of(context)
                      //           .textTheme                                   //my code 
                      //           .headline6
                      //           .copyWith(
                      //               fontWeight: FontWeight.w900,
                      //               fontSize: 18
                      //           ),
                      //   ),
                      // ),

                      // Padding(
                      //   padding: const EdgeInsets.all(5.0),  
                      //   child: Text(
                      //       "Live happier and healthier by learning \nthe fundementals of meditation \nand mind fullness",
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .headline6
                      //           .copyWith(
                      //               fontWeight: FontWeight.w700,
                      //               fontSize: 15
                      //           ),
                      //   ),
                      // ),

                      SizedBox(
                        width: 200,
                        height: 105,
                        child: SearchBar()
                      ),
                      
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 2.5,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,

                          children: <Widget>[

                            MediItem(
                              title: "Session 01",
                              press: () {},
                            ),

                            MediItem(
                              title: "Session 02",
                              press: () {},
                            ),

                            MediItem(
                              title: "Session 03",
                              press: () {},
                            ),

                            MediItem(
                              title: "Session 04",
                              press: () {},
                            ),

                            MediItem(
                              title: "Session 05",
                              press: () {},
                            ),

                            MediItem(
                              title: "Session 06",
                              press: () {},
                            ),

                          ],

                        )
                      )

                    ]
                  ),
              ),
            )
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



