import 'package:flutter/material.dart';
import 'package:milestones/userVM.dart';
import 'package:provider/provider.dart';

class AgeBar extends StatefulWidget {
  const AgeBar({super.key});

  @override
  State<AgeBar> createState() => _AgeBar();
}

class _AgeBar extends State<AgeBar> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // Access UserModel from UserViewModel using Provider
    final userViewModel = Provider.of<UserViewModel>(context);
    final user = userViewModel.user; // Get user data

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [ 
        Stack(
          clipBehavior: Clip.none,
          children: [
            // Linear Progress Bar
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: LinearProgressIndicator(
                value: (user.ageProg /100), // age value
                minHeight: 30, // Height of the age bar
                backgroundColor: const Color.fromARGB(255, 253, 239, 226), 
                valueColor:
                    const AlwaysStoppedAnimation(Color.fromARGB(255, 32, 21, 21),),
              ),
            ),
            // Icon overlayed on top of the age bar (not inside it)
            // Positioned(
            //   left:(user.ageProg / 100 * 400 - 16), // Position based on age
            //   top: -27, // Adjust to place the icon above the bar
            //   child: const Icon(
            //     Icons.star_rate_rounded, // Replace with your desired icon
            //     color: Color(0xFFF0E9DA), // Set the icon color
            //     size: 75, // Adjust icon size// Adjust icon size
            //   ),
            // ),
            Positioned(
              top: 32,
              left:0,
              right:0,
              child: Row(// Row for text labels at both ends
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "18", // Left-side label
                    style: TextStyle(
                      fontFamily: 'MadeTommy',
                      color: Color.fromARGB(255, 253, 239, 226), 
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 311),
                  Text(
                    "26", // Right-side label
                    style: TextStyle(
                      fontFamily: 'MadeTommy',
                      color: Color.fromARGB(255, 253, 239, 226), 
                      fontSize: 16,
                    ),
                  ),
                ],
                ),
              )
            //const SizedBox(height: 1), // Space between bar and labels
          ],
        )
      ]
    );  
  }
}
