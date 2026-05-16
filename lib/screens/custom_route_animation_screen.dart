import 'package:flutter/material.dart';
import 'second_route_screen.dart';

class CustomRouteAnimationScreen extends StatelessWidget {
  const CustomRouteAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route Animations"),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,

              PageRouteBuilder(
                // builds custom animation for screen
                
                transitionDuration: const Duration(milliseconds: 500),

                pageBuilder: (context, animation, secondaryAnimation) => const SecondRouteScreen(), //defines which screen to show

                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  //animation logic here
                  const begin = Offset(0.0, 1.0); //screen starts off to the right
                  const end = Offset.zero; // screen ends at center

                  const curve = Curves.easeInOut;

                  var tween = Tween(
                    //defines the range of an animation
                    //tween is a converter
                    begin: begin, //when animation = 0.0, use this
                    end: end, // when animation = 1.0, use this
                  ).chain(
                    CurveTween(curve: curve),
                  );

                  var offsetAnimation = animation.drive(tween); //connects it to tween so the position updates as the animation progress.

                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
              ),
            );
          },

          child: const Text("Open Screen"),
        ),
      ),
    );
  }
}