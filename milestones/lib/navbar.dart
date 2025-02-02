import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:milestones/Profile.dart';
// import 'package:milestones/task_screens/buildingCredit.dart';
import 'package:milestones/home.dart';
import 'package:milestones/tasks.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  void initState() {
    super.initState();
    // Set the status bar to be transparent on the first screen
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      statusBarIconBrightness: Brightness.dark, // Icon brightness (light or dark)
    ));
  }
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Tasks(),
    const Profile(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 197, 134, 134), //Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 197, 134, 134), //Color(0xFFAA5864),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.house_rounded,
                    color: Color(0xFFFDEFE2),
                    size: 45,
                  )
                : const Icon(
                    Icons.house_rounded,
                    color: Color.fromARGB(255, 170, 88, 100),//Color(0xFFC58686),
                    size: 45,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.check_box_rounded,
                    color: Color(0xFFFDEFE2),
                    size: 45,
                  )
                : const Icon(
                    Icons.check_box_rounded,
                    color: Color.fromARGB(255, 170, 88, 100), //Color(0xFFC58686),
                    size: 45,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.monetization_on_rounded,
                    color: Color(0xFFFDEFE2),
                    size: 45,
                  )
                : const Icon(
                    Icons.monetization_on_rounded,
                    color:Color.fromARGB(255, 170, 88, 100),//Color(0xFFC58686),
                    size: 45,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Color(0xFFFDEFE2),
                    size: 45,
                  )
                : const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 170, 88, 100),//Color(0xFFC58686),
                    size: 45,
                  ),
          ),
        ],
      ),
    );
  }
}