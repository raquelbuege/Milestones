import 'package:flutter/material.dart';
import 'package:milestones/task_screens/buildCredit.dart';
import 'package:milestones/task_screens/emergencyFundTask.dart';
import 'package:milestones/task_screens/one.dart';
import 'package:milestones/userVM.dart';
import 'package:milestones/usermodel.dart';
import 'package:milestones/widgets/checkBox.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class TaskTap extends StatefulWidget {
  final String title;
  final double progressValue;
  final Widget screen;

  TaskTap(
      {required this.title, required this.progressValue, required this.screen});

  @override
  _TaskTapState createState() => _TaskTapState();
}

class _TaskTapState extends State<TaskTap> {
  bool isChecked = false; // This will store the checkbox state

  double proRgressValue() {
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
          width: 350,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFFFDEFE2),
            borderRadius: BorderRadius.circular(10), // Set the border radius
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
                child: SizedBox(
                  width: 80.0, // Set the width of the progress indicator
                  height: 80.0,

                  child: CircularProgressIndicator(
                    backgroundColor: Colors.black12,
                    valueColor: AlwaysStoppedAnimation(Color(0xFF724565)),
                    strokeWidth: 25,
                    value: 0.7,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 20, 0),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => widget.screen),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 35,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
