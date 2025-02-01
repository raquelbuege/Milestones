import 'package:flutter/material.dart';
import 'package:milestones/usermodel.dart';

class UserViewModel extends ChangeNotifier{
  int age = 21;
  int ageDif = 5; //26-21
  double ageProg = 62.5; //5*12.5

  bool hasCreditCard = true;
  int creditScore = 710;
  double creditScoreProg = 10;
  bool above700 = true;

  bool hasRothIRA = true;
  int rothInvest = 4329;
  bool has401k = false;

  bool completedFund = false;
  int totalExpenses = 850;
  int fundNeeded = 2550; //850 * 3
  double fundSaved = 460;
  double fundProg = 18.03; //460 / 2550 

  bool isInvesting = false; 
  int amountInvested = 0;
  double totalProgress = 0;

  void calculateTotalProg(){
    double increment = 100/7;

    if(hasCreditCard){
      print("counted credit card");
      totalProgress += increment;
    }
    //if !above700 => calculate difference to add to score
    if(above700){
      print("counted above 700 credit score");
      totalProgress += increment;
    }
    if(hasRothIRA){
      print("counted roth ira");
      totalProgress += increment;
    }
    if(has401k){
      print("counted 401k");
      totalProgress += increment;
    }
    if(!completedFund){
      print("fund not complete calculating percentage to add");
      double fundProgPercent = 18.03/increment; //percentage of fundProgress within slice of increment
      totalProgress += fundProgPercent;
    }

    if(isInvesting){
      print("added investing");
      totalProgress += increment;
    }

    print("calculated total progress $totalProgress");
  }

  

  late UserModel user;
  UserViewModel(){
    calculateTotalProg(); //calulates total perecentage for constructor
    user = UserModel(
      ageDif: ageDif, 
      ageProg: ageProg,
      totalProgress: totalProgress, 
      hasCreditCard: hasCreditCard, 
      creditScore: creditScore, 
      creditScoreProg: creditScoreProg, 
      above700: above700, 
      hasRothIRA: hasRothIRA, 
      rothInvest: rothInvest, 
      has401k: has401k, 
      completedFund: completedFund,
      totalExpenses: totalExpenses, 
      fundSaved: fundSaved, 
      isInvesting: isInvesting, 
      amountInvested: amountInvested);
  }
  //calculate total prog function
  

}