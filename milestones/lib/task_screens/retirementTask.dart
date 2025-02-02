import 'package:flutter/material.dart';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:milestones/userVM.dart';
import 'package:milestones/widgets/taskCard.dart';
import 'package:provider/provider.dart';
import 'package:milestones/widgets/progressbar.dart';
import '../circleprogress.dart';
//import '../expandedcontainer.dart';
import 'package:milestones/widgets/badges.dart';

class RetirementTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Retirement(),
    );
  }
}

class Retirement extends StatelessWidget {
  Retirement({super.key});
  final String task1 = 'Task 1: Set Up Roth IRA';
 final String description1 = "A Roth IRA is a retirement account where your investments grow tax-free. You contribute after-tax money, and when you retire, you can withdraw funds without paying taxes.";

final List<String> bulletPoints1 = [
  "Tax-free growth: Your investments grow without being taxed.",
  "Contribute after-tax dollars: Pay taxes upfront, not when you withdraw.",
  "Withdrawals in retirement are tax-free.",
  "Ideal for long-term growth if opened early.",
  "Access to a variety of investment options to build wealth."
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
                          onPressed: () {  Navigator.pop(context);},
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
                          value: 0.7,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 34.0),
                    child: Text(
                      style: TextStyle(
                        color: Color(0xFFFDEFE2),
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      'Retirement Savings',
                    ),
                  ),
                  TaskCard(
                    title: task1,
                    description: description1,
                    bulletPoints: bulletPoints1,
                    progressValue: progressValue1,
                  ),
                    TaskCard(
                    title: task2,
                    description: description2,
                    bulletPoints: bulletPoints2,
                    progressValue: progressValue2,
                  ),
               
                ],
              ),
            )),
      ],
    );
  }
}
