// Start building Credit
//open credit card
// Get/ keep credit score 700+

// Begin saving for retirement 
// Open up a Roth IRA (small description of what Roth IRA is) [potential for growth = adding learning modules for different genres]
// Contribute to a 401k (not relevant to me if don't have a job)

// Build an Emergency Fund (3-6 months expenses)
// Input total expenses 
// Progress bar to completion (on updates?)

// Learn about investing (suggested = not factored into total progress bar)
// index funds, ETFs, risk vs. reward

// Potential for growth => Notify for Taxes?

import 'package:flutter/material.dart';

class UserModel{
  //user variables
  int ageDif; // 26 - age
  //100/8 = 12.5 (amount for each year)
  double ageProg; //ageprog = ageDif * 12.5 
  double? totalProgress; // out of 6?

  //goal variables
    //credit
  bool creditBadge; //BADGE
  bool? hasCreditCard; //1/6
  int? creditScore;  //2/6
  double? creditScoreProg; //creditscore - 700
  bool? above700; //if creditScoreProg >= 0 => true

    //retirement
  bool retirementBadge; //BADGE
  bool? hasRothIRA; //3/6
  int? rothInvest; 
  bool? has401k; //4/6

    //emergency fund
  bool emergencyBadge;
  int? totalExpenses; 
  double? fundSaved; //5/6
  double? fundProg;

    //investing
  bool investingBadge;
  bool? isInvesting; //6/6
  int? amountInvested;

  UserModel({
    required this.ageDif,
    required this.ageProg,
    this.totalProgress,
    this.creditBadge = false,
    required this.hasCreditCard,
    required this.creditScore,
    required this.creditScoreProg,
    required this.above700,
    this.retirementBadge = false,
    required this.hasRothIRA,
    required this.rothInvest,
    required this.has401k,
    this.emergencyBadge = false,
    required this.totalExpenses,
    required this.fundSaved,
    this.investingBadge = false,
    required this.isInvesting,
    required this.amountInvested,
  });
}


