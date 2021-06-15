import 'package:exercise_app/constraints.dart';
import 'package:flutter/material.dart';

// items for diet recommendation

class DietItem extends StatelessWidget {
  final String title;
  final Function press;
  final bool isActive;
  const DietItem({
    Key key, 
    this.title, 
    this.press, 
    this.isActive = false
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
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 42,
                        width: 43,
                        decoration: BoxDecoration(
                          //color: Colors.black,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.no_food_outlined,
                          color: Colors.black,
                        ),
                    ),

                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      title,
                      style: Theme.of(context)
                            .textTheme
                            .headline6
                            
                    ),
                  ],
                ),

                // child: Text.rich(
                //   TextSpan(
                    
                //     children: [
                //       WidgetSpan(
                        
                //         //child: SvgPicture.asset(svgSrc),
                //         child: Icon(
                //           Icons.play_arrow,
                //           color: KBlueColor,
                //         )
                //       ),

                //       TextSpan(
                //         text: title,
                //         style: Theme.of(context)
                //         .textTheme
                //         .headline6
                //         .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                //       )
                //     ],
                //   ),
                // )

              ),
          ),
        ),
      ),
    );
  }
}


// items for meditation

class MediItem extends StatelessWidget {
  final String title;
  final Function press;
  final bool isActive;
  const MediItem({
    Key key, 
    this.title, 
    this.press, 
    this.isActive = false
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
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                
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
                          Icons.play_arrow,
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
                            .subtitle2
                            
                    ),
                  ],
                ),

                // child: Text.rich(
                //   TextSpan(
                    
                //     children: [
                //       WidgetSpan(
                        
                //         //child: SvgPicture.asset(svgSrc),
                //         child: Icon(
                //           Icons.play_arrow,
                //           color: KBlueColor,
                //         )
                //       ),

                //       TextSpan(
                //         text: title,
                //         style: Theme.of(context)
                //         .textTheme
                //         .headline6
                //         .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                //       )
                //     ],
                //   ),
                // )

              ),
          ),
        ),
      ),
    );
  }
}

// items for exercises

class ExerciseItem extends StatelessWidget {
  final String title;
  final Function press;
  final bool isActive;
  const ExerciseItem({
    Key key, 
    this.title, 
    this.press, 
    this.isActive = false
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
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                
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
                          Icons.fitness_center,
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
                            .subtitle2
                            
                    ),
                  ],
                ),

                // child: Text.rich(
                //   TextSpan(
                    
                //     children: [
                //       WidgetSpan(
                        
                //         //child: SvgPicture.asset(svgSrc),
                //         child: Icon(
                //           Icons.play_arrow,
                //           color: KBlueColor,
                //         )
                //       ),

                //       TextSpan(
                //         text: title,
                //         style: Theme.of(context)
                //         .textTheme
                //         .headline6
                //         .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                //       )
                //     ],
                //   ),
                // )

              ),
          ),
        ),
      ),
    );
  }
}

