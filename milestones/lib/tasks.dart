import 'package:flutter/material.dart';
import 'package:milestones/home.dart';
import 'package:milestones/task_screens/buildCredit.dart';
import 'package:milestones/task_screens/emergencyFundTask.dart';
import 'package:milestones/task_screens/investingTask.dart';
import 'package:milestones/task_screens/retirementTask.dart';
import 'package:milestones/widgets/taskTap.dart';
import 'circleprogress.dart';
import 'package:arc_progress_bar_new/arc_progress_bar_new.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            width: 600,
            height: 30000,
            color: Color(0xFF201515),
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Linear Progress Bar
                    LinearProgressIndicator(
                      value: 60 / 100, // Your progress value
                      minHeight: 20, // Height of the progress bar
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
                        size: 45, // Adjust icon size
                      ),
                    ),
                  ],
                )),
               TaskTap(
                  title: "Build Credit",
                  progressValue: 1.0,
                  screen: CreditTask()
                ),
              TaskTap(
                  title: "Emergency \nFund",
                  progressValue: 1.0,
                  screen: Emergencyfundtask()
                ),
                TaskTap(
                  title: "Investing",
                  progressValue: 1.0,
                  screen: InvestingTask()
                ),

                TaskTap(
                  title: "Retirement \nFund",
                  progressValue: 1.0,
                  screen: RetirementTask()
                ),
    
    
          ],
        ))
      ]
    );
  }
}