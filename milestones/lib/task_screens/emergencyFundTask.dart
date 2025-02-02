import 'package:flutter/material.dart';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:milestones/userVM.dart';
import 'package:milestones/widgets/emergencyTaskCard.dart';
import 'package:milestones/widgets/taskCard.dart';
import 'package:provider/provider.dart';
import 'package:milestones/widgets/progressbar.dart';
import '../circleprogress.dart';
//import '../expandedcontainer.dart';
import 'package:milestones/widgets/badges.dart';

class Emergencyfundtask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Emergencyfund(),
    );
  }
}

class Emergencyfund extends StatelessWidget {
  Emergencyfund({super.key});
  final String task1 = 'Task 1: Input Total Expenses';
final String description1 = "Having an emergency fund with 3 months' worth of expenses provides a financial safety net, helping you stay afloat during unexpected events like job loss or emergencies.";

final List<String> bulletPoints1 = [
  "Track monthly spending",
  "Identify areas to cut costs",
  "Ensure you stay within budget",
  "Plan for savings and emergencies"
];

  final double progressValue1 = 1;
    final double progressValue2 = 1;

final String task2 = "Task 2: Contribute to 401k ";
final String description2 = "A 401k is an employer-sponsored retirement plan where you contribute a portion of your paycheck. Some employers match contributions, making it a great way to save for retirement.";

final List<String> bulletPoints2 = [
  "Employer-sponsored retirement savings plan",
  "Contribute a portion of your paycheck",
  "Employer matching (if available)",
  "Tax-deferred growth until retirement"
];






  @override
  Widget build(BuildContext context) {
    final String title = "Welcome to Flutter!";
    // Access UserModel from UserViewModel using Provider
    final userViewModel = Provider.of<UserViewModel>(context);
    final user = userViewModel.user; // Get user data

    double totalCalculations(){
      return user.fundSaved!/(user.totalExpenses! * 3.0);

    }


    return 
    
    ListView(
      children: [
    
        Container(
            width: 600,
            height: 30000,
            color: Color(0xFF201515),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 30.0, 290.0, 0.0),
                      child: IconButton(
                          onPressed: () { Navigator.pop(context);},
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color:Color(0xFFFDEFE2),
                            size: 45,
                          ))),
                  Container(
                      width: 220,
                      height: 220,
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: CircularProgressIndicator(
                          backgroundColor: Color(0xFFFDEFE2),
                          valueColor: AlwaysStoppedAnimation(Color(0xFF724565)),
                          strokeWidth: 60,
                          value: totalCalculations(),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 30.0),
                    child: Text(
                      style: TextStyle(
                        color: const Color.fromARGB(255, 197, 134, 134), //Color(0xffC4DFCB),
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      'Emergency Fund',
                    ),
                  ),
                  EmergencyTaskCard(
                    title: task1,
                    description: description1,
                    bulletPoints: bulletPoints1,
                    progressValue: progressValue1,
                  ),
                
                ],
              ),
            )),
      ],
    );
  }
}
