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

class InvestingTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Investing(),
    );
  }
}

class Investing extends StatelessWidget {
  Investing({super.key});

  final String task1 = "Task 1: Invest in Index Fund";
  final String description1 =
      "Index funds are a type of mutual fund that track a market index, offering low-cost, diversified exposure to various stocks or bonds.";

  final List<String> bulletPoints1 = [
    "Low-cost, passive investment strategy",
    "Diversify across multiple stocks or bonds",
    "Ideal for long-term investors",
    "Track major market indices (e.g., S&P 500)"
  ];

  final double progressValue2 = 1;
  final String task2 = "Task 2: Invest in ETF";

  final String description2 =
      "ETFs are similar to index funds but trade like stocks on the stock exchange, offering flexibility and liquidity.";

  final List<String> bulletPoints2 = [
    "Trade like stocks on the exchange",
    "Offer diversification and low fees",
    "Great for active or passive investors",
    "Highly liquid and flexible"
  ];

  final String task3 = "Task 3: Risk vs. Reward";

  final String description3 =
      "Understanding risk vs. reward helps you make informed investment choices by balancing potential returns with the possibility of loss.";

  final List<String> bulletPoints3 = [
    "Higher rewards typically involve higher risk",
    "Assess your risk tolerance before investing",
    "Diversify to manage risk while pursuing gains",
    "Consider long-term investment goals to balance risk"
  ];

  @override
  Widget build(BuildContext context) {
    final String title = "Welcome to Flutter!";
    // Access UserModel from UserViewModel using Provider
    final userViewModel = Provider.of<UserViewModel>(context);
    final user = userViewModel.user; // Get user data

    return  ListView(
      children: [
        Container(
            width: 300,
            height: 3000,
            color: Color(0xFF201515),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 30.0, 290.0, 0.0),
                      child: IconButton(
                          onPressed: () {Navigator.pop(context);},
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
                      'Invest',
                    ),
                  ),
                  TaskCard(
                    title: task1,
                    description: description1,
                    bulletPoints: bulletPoints1,
                    progressValue: 1,
                  ),
                  TaskCard(
                    title: task2,
                    description: description2,
                    bulletPoints: bulletPoints2,
                    progressValue: progressValue2,
                  ),
                  TaskCard(
                    title: task3,
                    description: description3,
                    bulletPoints: bulletPoints3,
                    progressValue: 1,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
