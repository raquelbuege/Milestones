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
  double totalProgress; // out of 6?

  //goal variables
    //credit
  bool creditBadge; //BADGE
  bool? hasCreditCard; //1/7
  int? creditScore;  
  double? creditScoreProg; //creditscore - 700
  bool? above700; //if creditScoreProg >= 0 => true 3/7

    //retirement
  bool retirementBadge; //BADGE
  bool? hasRothIRA; //4/7
  int? rothInvest; 
  bool? has401k; //5/7

    //emergency fund
  bool emergencyBadge;
  bool completedFund; //6/7
  int? totalExpenses; 
  double? fundSaved; //6/7
  double? fundProg;

    //investing
  bool investingBadge;
  bool? isInvesting; //7/7
  int? amountInvested;

  UserModel({
    required this.ageDif,
    required this.ageProg,
    required this.totalProgress,
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
    required this.completedFund,
    required this.totalExpenses,
    required this.fundSaved,
    this.investingBadge = false,
    required this.isInvesting,
    required this.amountInvested,
  });
}


