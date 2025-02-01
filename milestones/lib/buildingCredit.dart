import 'package:flutter/material.dart';
import 'package:milestones/userVM.dart';
import 'package:milestones/widgets/taskCard.dart';
import 'package:provider/provider.dart';
import 'package:milestones/widgets/progressbar.dart';
import 'circleprogress.dart';
import 'expandedcontainer.dart';
import 'package:milestones/widgets/badges.dart';

class BuildingCredit extends StatelessWidget {
  const BuildingCredit({super.key});

  @override
  Widget build(BuildContext context) {
    // Access UserModel from UserViewModel using Provider
    final userViewModel = Provider.of<UserViewModel>(context);
    final user = userViewModel.user; // Get user data

    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
      child: Column(
        children: [
          Container(
              width: 220,
              height: 220,
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.redAccent,
                  valueColor: AlwaysStoppedAnimation(Colors.green),
                  strokeWidth: 60,
                  value: 0.7,
                ),
              )),
          TaskCard(),
        ],
      ),
    );
  }
}
