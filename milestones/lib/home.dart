import 'package:flutter/material.dart';
import 'circleprogress.dart';
import 'expandedcontainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: 
      const Column(
        children: [
          ExpansionTileExample(),
           Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Linear Progress Bar
                    LinearProgressIndicator(
                      value: 60 / 100, // Your progress value
                      minHeight: 15, // Height of the progress bar
                      backgroundColor: Colors.black12,
                      valueColor: AlwaysStoppedAnimation(
                          Color.fromARGB(255, 255, 255, 255)),
                    ),
                    // Icon overlayed on top of the progress bar (not inside it)
                    Positioned(
                      left: 56 / 100 * 400 - 16, // Position based on progress
                      top: -5, // Adjust to place the icon above the bar
                      child: Icon(
                        Icons.circle, // Replace with your desired icon
                        color: Color.fromARGB(255, 0, 0, 0), // Set the icon color
                        size: 24, // Adjust icon size
                      ),
                    ),
                  ],
                ))
           , Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Linear Progress Bar
                    LinearProgressIndicator(
                      value: 60 / 100, // Your progress value
                      minHeight: 15, // Height of the progress bar
                      backgroundColor: Colors.black12,
                      valueColor: AlwaysStoppedAnimation(
                          Color.fromARGB(255, 255, 255, 255)),
                    ),
                    // Icon overlayed on top of the progress bar (not inside it)
                    Positioned(
                      left: 55 / 100 * 400 - 16, // Position based on progress
                      top: -13, // Adjust to place the icon above the bar
                      child: Icon(
                        Icons.star, // Replace with your desired icon
                        color: Color.fromARGB(
                            255, 235, 201, 9), // Set the icon color
                        size: 38, // Adjust icon size
                      ),
                    ),
                  ],
                ))
        ],
      ),
      
   
    );
  }
}