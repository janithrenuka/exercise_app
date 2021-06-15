import 'package:exercise_app/widgets/setting_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                padding: const EdgeInsets.all(20.0),
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
                              childAspectRatio: 1.5,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,

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
      )  
    );
  }
}