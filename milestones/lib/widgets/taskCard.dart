import 'package:flutter/material.dart';
import 'package:milestones/userVM.dart';
import 'package:milestones/usermodel.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class TaskCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userViewModel = Provider.of<UserViewModel>(context);
    final user = userViewModel.user; // Get user data

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 26, 10, 26),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 197, 134, 134),
          border: Border.all(
              color: Colors.transparent), // Remove the border or stroke
          borderRadius: BorderRadius.circular(12), // Optional rounded corners
        ),
        child: const Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearProgressIndicator(
                value: (.5), // Your progress value
                minHeight: 26, // Height of the progress bar
                backgroundColor: const Color.fromARGB(255, 233, 221, 218),
                valueColor: const AlwaysStoppedAnimation(
                    Color.fromARGB(255, 221, 185, 176)),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Task 1',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color.fromARGB(255, 47, 37, 41),
                    ),
                  ),
                  Text('1/4'),
                ],
              ),
              const ReadMoreText(
                "blah blah blah tips and tricks\nblah blah blah tips and tricks\nrblah blah blah tips and tricks ",
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style: TextStyle(
                  height: 1.25,
                  fontFamily: 'Coolvetica',
                  fontSize: 18,
                  color: Color.fromARGB(255, 53, 45, 57),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
