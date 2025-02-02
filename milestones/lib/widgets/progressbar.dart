import 'package:flutter/material.dart';
import 'package:milestones/userVM.dart';
import 'package:provider/provider.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final userViewModel = Provider.of<UserViewModel>(context);
    final user = userViewModel.user; // Get user data
    
    return Stack(
        clipBehavior: Clip.none,
        children: [
          // Linear Progress Bar
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: LinearProgressIndicator(
              value: (user.totalProgress / 100), // Your progress value
              minHeight: 30, // Height of the progress bar
              backgroundColor: const Color.fromARGB(255, 253, 239, 226), 
              valueColor:
                  const AlwaysStoppedAnimation(Color.fromARGB(255, 32, 21, 21),),
            ),
          ),
          // Icon overlayed on top of the progress bar (not inside it)
          Positioned(
            left: (user.totalProgress / 100 * 400 - 47), // Position based on progress
            top: -27, // Adjust to place the icon above the bar
            child: Icon(
              Icons
                  .star_rate_rounded, // Replace with your desired icon
              color: Color.fromARGB(255, 170, 88, 100), // Set the icon color
              size: 75, // Adjust icon size
            ),
          ),
        ],
      );
  }
}
