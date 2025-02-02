import 'package:flutter/material.dart';
import 'package:milestones/userVM.dart';
import 'package:milestones/usermodel.dart';
import 'package:milestones/widgets/checkBox.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:milestones/widgets/slider.dart';

class EmergencyTaskCard extends StatefulWidget {
  final String title;
  final String description;
  final List<String>
      bulletPoints; // Change this to accept a List of Strings (bullet points)
  final double progressValue;

  EmergencyTaskCard(
      {required this.title,
      required this.description,
      required this.bulletPoints,
      required this.progressValue});

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<EmergencyTaskCard> {
  bool isChecked = false; // This will store the checkbox state

  double progressValue() {
    if (isChecked == true) {
      return 1.0;
    }
    return 0.0;
  }

  void handleCheckboxChange(bool value) {
    setState(() {
      isChecked = value; // Update the state based on user interaction
    });
  }

  @override
  Widget build(BuildContext context) {
    double _currentSliderValue = 20;

    final userViewModel = Provider.of<UserViewModel>(context);
    final user = userViewModel.user; // Get user data
    String combinedText = widget.description +
        '\n\n' +
        widget.bulletPoints
            .map((point) => '    • ' + point) // Add indentation before bullet
            .join(
                '\n'); // Join with just a newline, no lines between the bullets

    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
      child: Container(
        width: 360,
        decoration: BoxDecoration(
          color: Color(0xFFFDEFE2),
          border: Border.all(
              color: Colors.transparent), // Remove the border or stroke
          borderRadius: BorderRadius.circular(18), // Optional rounded corners
        ),
        child: Padding(
          padding:  EdgeInsets.fromLTRB(30, 10, 30, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Amount Saved",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 47, 37, 41),
                ),
              ),
              SliderExample(),
              Center(
                  child: SizedBox(
                width: 310,
              )),
              Column(
                children: [
            
                  Column(

                   children:  [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Task 1: SAVE Emergency Fund",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 47, 37, 41),
                      ),
                    ),
                  ),
                ],
              )
                
                
                ,
                 Text(
                      "Having an emergency fund with 3 months' worth of expenses provides a financial safety net, helping you stay afloat during unexpected events like job loss or emergencies.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 47, 37, 41),
                      ),
                    ),
                
                ],),

              Row(
              children:[
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Monthly Expenses: ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 47, 37, 41),
                      ),
                    ),
                  ),Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "\$800",
                      style: TextStyle(
                         fontWeight: FontWeight.bold,
                        fontSize: 18,

                        color: Color.fromARGB(255, 47, 37, 41),
                      ),
                    ),
                  ),

              ]),
                  Row(
              children:[
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "Emergency Fund Amount: ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 47, 37, 41),
                      ),
                    ),
                  ),Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "\$2,640",
                      style: TextStyle(
                         fontWeight: FontWeight.bold,
                        fontSize: 18,

                        color: Color.fromARGB(255, 47, 37, 41),
                      ),
                    ),
                  ),

              ]),


                ],
             

 
          )],
          ),
        ),
      ),
    );
  }
}
