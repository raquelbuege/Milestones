import 'package:flutter/material.dart';
import 'package:milestones/Profile.dart';
import 'package:milestones/home.dart';
import 'package:milestones/tasks.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
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
      backgroundColor: const Color(0xffC4DFCB),

      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFF36395F),
      
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
                    Icons.house_rounded ,
                    color:  Color(0xFFF0E9DA),
                    size: 45,
                  )
                : const Icon(
                    Icons.house_rounded ,
                    color:Color(0xFF98A6D4),
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
                    color:  Color(0xFFF0E9DA),
                    size: 45,
                  )
                : const Icon(
                    Icons.check_box_rounded,
                    color:  Color(0xFF98A6D4),
                    size:45,
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
                    color:  Color(0xFFF0E9DA),
                    size: 45,
                  )
                : const Icon(
                    Icons.monetization_on_rounded,
                    color:  Color(0xFF98A6D4),
                    size:45,
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
                    color:  Color(0xFFF0E9DA),
                    size: 45,
                  )
                : const Icon(
                    Icons.person,
                    color:  Color(0xFF98A6D4),
                    size: 45,
                  ),
          ),
        ],
      ),
    );
  }
}
