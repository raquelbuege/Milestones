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

class CreditTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BuildingCredit(),
    );
  }
}

class BuildingCredit extends StatelessWidget {
  BuildingCredit({super.key});
  final String task1 = 'Task 1: Start building Credit';
  final String description1 =
      'Consider opening a credit card to start building your credit. Explore some popular starter credit cards and remember these key tips:';
  final List<String> bulletPoints1 = [
    "Pay in Full: Avoid only making minimum payments—pay off your balance in full when you can.",
    "Stay Under 30% Utilization: Try to spend less than 30% of your available credit to keep your score healthy.",
    "Treat It Like a Debit Card: Only spend what you can afford to pay off immediately to avoid debt.",
    "Use for Rewards: Maximize your credit card’s benefits by using it for everyday purchases to earn cashback or points."
  ];

  final double progressValue1 = 1;
  final double progressValue2 = 1;


 

  final String task2 = "Task 2: Mantain a \n700+ Score ";
  final String subtext2 =
      "Aim for a credit score of 700+ to unlock better financial opportunities:";

  final List<String> bulletPoints2 = [
    "Pay statement in full each month",
    "Keep credit usage below 30%",
    "Avoid excessive debt"
  ];

  @override
  Widget build(BuildContext context) {

    final String title = "Welcome to Flutter!";
    // Access UserModel from UserViewModel using Provider
    final userViewModel = Provider.of<UserViewModel>(context);
    final user = userViewModel.user; // Get user data
  
  
  double progressVal(){
    if(user.hasCreditCard == true){
      return 1.0;
    }else{
      return 0;
    }
  }

  double calculateTotalProgress(){
    if(user.hasCreditCard! && user.above700!){
      return 1.0;
    }
    if(user.hasCreditCard! || user.above700!){
      return 0.5;
    }
    return 0;
  }

    return ListView(
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
                           onPressed: () {
            Navigator.pop(context); // Pops this screen and goes back to the previous one
          },
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color:const Color.fromARGB(255, 197, 134, 134),
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
                          value: calculateTotalProgress()
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 30.0),
                    child: Text(
                      style: TextStyle(
                        color:const Color.fromARGB(255, 197, 134, 134), //Color(0xffC4DFCB),
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      'Start Building Credit',
                    ),
                  ),
                  TaskCard(
                    title: task1,
                    description: description1,
                    bulletPoints: bulletPoints1,
                    progressValue: user.hasCreditCard,
                    checkMark: user.hasCreditCard,
                  ),
                  TaskCard(
                    title: task2,
                    description: subtext2,
                    bulletPoints: bulletPoints2,
                    progressValue: user.above700,
                    checkMark: user.above700,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
