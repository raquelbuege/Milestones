import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // Linear Progress Bar
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const LinearProgressIndicator(
                            value: 60 / 100, // Your progress value
                            minHeight: 30, // Height of the progress bar
                            backgroundColor: Color(0xFF36395F),
                            valueColor:
                                AlwaysStoppedAnimation(Color(0xFF90B494)),
                          ),
                        ),
                        // Icon overlayed on top of the progress bar (not inside it)
                        const Positioned(
                          left:
                              45 / 100 * 400 - 16, // Position based on progress
                          top: -27, // Adjust to place the icon above the bar
                          child: Icon(
                            Icons
                                .star_rate_rounded, // Replace with your desired icon
                            color: Color(0xFFF0E9DA), // Set the icon color
                            size: 75, // Adjust icon size
                          ),
                        ),
                      ],
                    );
  }
}
