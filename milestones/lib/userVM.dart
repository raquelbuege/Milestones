import 'package:flutter/material.dart';
import 'package:milestones/model.dart';

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

  int totalExpenses = 850;
  int fundNeeded = 2550; //850 * 3
  double fundSaved = 460;
  double fundProg = 18.03; //460 / 2550 

  bool isInvesting = false; 
  int amountInvested = 0;

  late UserModel user;
  UserViewModel(){
    user = UserModel(
      ageDif: ageDif, 
      ageProg: ageProg, 
      hasCreditCard: hasCreditCard, 
      creditScore: creditScore, 
      creditScoreProg: creditScoreProg, 
      above700: above700, 
      hasRothIRA: hasRothIRA, 
      rothInvest: rothInvest, 
      has401k: has401k, 
      totalExpenses: totalExpenses, 
      fundSaved: fundSaved, 
      isInvesting: isInvesting, 
      amountInvested: amountInvested);
  }
  //calculate total prog function
  

}