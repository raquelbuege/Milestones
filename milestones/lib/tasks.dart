import 'package:flutter/material.dart';
import 'package:milestones/home.dart';
import 'package:milestones/task_screens/buildCredit.dart';
import 'package:milestones/task_screens/emergencyFundTask.dart';
import 'package:milestones/task_screens/investingTask.dart';
import 'package:milestones/task_screens/retirementTask.dart';
import 'package:milestones/widgets/agebar.dart';
import 'package:milestones/widgets/progressbar.dart';
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
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Linear Progress Bar
                  Padding(
                       padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 197, 134, 134),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 7),
                                child:const Column(
                              children: [
                                
                                 
                         
                                SizedBox(height: 5),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 210, 0),
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    "Progress Bar", // Left-side label
                                    style: TextStyle(
                                      fontFamily: 'MadeTommy',
                                      color: Color.fromARGB(255, 253, 239, 226),
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 1),
                                ProgressBar(),
                              ],
                            )
                              )
                  ),
                    // Icon overlayed on top of the progress bar (not inside it)
                    
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