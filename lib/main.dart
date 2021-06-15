import 'package:exercise_app/constraints.dart';
import 'package:exercise_app/screens/all_exercises.dart';
import 'package:exercise_app/screens/details_screen.dart';
import 'package:exercise_app/screens/settings.dart';
import 'package:exercise_app/widgets/bottom_nav_item.dart';
import 'package:exercise_app/widgets/category_card.dart';
import 'package:exercise_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: KbackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: KTextColor)
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      var size = MediaQuery.of(context).size; //this is set total height of device
      return Scaffold(
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
            ]
            
            
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
                height: size.height * .45, // this container height is 45% of total app height
                decoration: BoxDecoration(
                  color: Color(0xFFF5CE88),
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/pilates.png"), // add image 
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

                      Padding(
                        padding: const EdgeInsets.all(15.0),  
                        child: Text(
                            "Good Morning Janith,",
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(
                                    fontWeight: FontWeight.w900
                                ),
                        ),
                      ),

                      SearchBar(),

                      Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            childAspectRatio: 0.90, // card ratio between up and down have to check again
                            crossAxisSpacing: 0,  // space between cards
                            mainAxisSpacing: 0,

                            children: <Widget>[

                              CategoryCard(  // card 1
                                title: "Diet Recommendation",
                                svgSrc: "assets/icons/Hamburger.svg",
                                press: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) {return DietDetailsScreen();}
                                    ), 
                                  );
                                },
                              ),

                              CategoryCard(  // card 2
                                title: "Kegel Exercises",
                                svgSrc: "assets/icons/Excrecises.svg",
                                press: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) {return KExerciseDetailsScreen();}
                                    ),
                                  ); 
                                },
                              ),

                              CategoryCard(  // card 3
                                title: "Meditation",
                                svgSrc: "assets/icons/Meditation_women_small.svg",
                                press: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) {return MediDetailsScreen();}
                                    ),
                                  ); 
                                },
                              ),

                              CategoryCard(  // card 4
                                title: "Yoga",
                                svgSrc: "assets/icons/yoga.svg",
                                press: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (conatext) {return YogaDetailsScreen();}
                                    ),
                                  );
                                },
                              ),

                              // Container(                          // this is my own code part 
                              //   margin: EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //     color: Colors.white,
                              //     borderRadius: BorderRadius.circular(10),
                              //   ),
                              //   child: new Column(
                              //     children: <Widget>[
                              //       new Container(
                              //         margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                              //         child: SvgPicture.asset("assets/icons/yoga.svg"),
                              //         height: 80,
                              //       ),
                              //       new Container(
                              //         alignment: Alignment.bottomCenter,
                              //         child: new Text(
                              //             "Yoga",
                              //             style: TextStyle(
                              //               fontWeight: FontWeight.w800,
                              //             ),
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),

                            ],
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




