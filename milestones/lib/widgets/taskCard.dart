import 'package:flutter/material.dart';
import 'package:milestones/userVM.dart';
import 'package:milestones/usermodel.dart';
import 'package:milestones/widgets/checkBox.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class TaskCard extends StatefulWidget {
  final String title;
  final String description;
  final List<String>
      bulletPoints; // Change this to accept a List of Strings (bullet points)
  final double progressValue;

  TaskCard(
      {required this.title,
      required this.description,
      required this.bulletPoints,
      required this.progressValue});

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
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
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: SizedBox(
                width: 310,
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0.0, end: progressValue()),
                  duration: Duration(seconds: 3), // Duration for the animation
                  builder: (context, value, child) {
                    return LinearProgressIndicator(
                      value: value, // The animated value
                      minHeight: 26, // Height of the progress bar
                      backgroundColor: Color.fromARGB(
                          255, 233, 221, 218), // Light background color
                      valueColor: AlwaysStoppedAnimation(
                          Color(0xFF724565)), // Progress color
                    );
                  },
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Row(
                      children: [
                        CheckboxExample(
                          initialChecked: isChecked, // Pass initial state
                          onChanged: handleCheckboxChange,
                        ),
                        Text(
                          widget.title,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 47, 37, 41),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5),
              // Bullet points that appear after expansion
              // Display description without indentation
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Coolvetica',
                    color: Color.fromARGB(255, 53, 45, 57),
                  ),
                ),
              ),

              SizedBox(height: 5),

              // Add Padding only for the bullet points, not for description
              Padding(
                padding:
                    EdgeInsets.only(left: 16.0), // Indent only bullet points
                child: ReadMoreText(
                  widget.bulletPoints.map((point) => '• ' + point).join('\n') +
                      '\n', // Only the bullet points
                  trimLines:
                      5, // Control how many lines to show before expanding
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Coolvetica',
                    color: Color.fromARGB(255, 53, 45, 57),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
