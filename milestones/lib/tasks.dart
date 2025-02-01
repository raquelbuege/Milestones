import 'package:flutter/material.dart';
import 'circleprogress.dart';
import 'package:arc_progress_bar_new/arc_progress_bar_new.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xffC4DFCB),
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Linear Progress Bar
                    LinearProgressIndicator(
                      value: 60 / 100, // Your progress value
                      minHeight: 20, // Height of the progress bar
                      backgroundColor: Colors.black12,
                      valueColor: AlwaysStoppedAnimation(
                          Color.fromARGB(255, 255, 255, 255)),
                    ),
                    // Icon overlayed on top of the progress bar (not inside it)
                    Positioned(
                      left: 55 / 100 * 400 - 16, // Position based on progress
                      top: -13, // Adjust to place the icon above the bar
                      child: Icon(
                        Icons.star, // Replace with your desired icon
                        color: Color.fromARGB(
                            255, 235, 201, 9), // Set the icon color
                        size: 45, // Adjust icon size
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Container(
                width: 350,
                height: 100,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                ),
                child: const Row(children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.redAccent,
                      valueColor: AlwaysStoppedAnimation(Colors.green),
                      strokeWidth: 10,
                      value: 0.7,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      "Credit Building",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                ),
                width: 350,
                height: 100,
                child: const Row(children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.redAccent,
                      valueColor: AlwaysStoppedAnimation(Colors.green),
                      strokeWidth: 10,
                      value: 0.7,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      "Credit Building",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                width: 350,
                height: 100,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                ),
                child: const Row(children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.redAccent,
                      valueColor: AlwaysStoppedAnimation(Colors.green),
                      strokeWidth: 10,
                      value: 0.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      "Credit Building",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                width: 350,
                height: 100,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                ),
                child: const Row(children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.redAccent,
                      valueColor: AlwaysStoppedAnimation(Colors.green),
                      strokeWidth: 10,
                      value: 0.9,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      "Credit Building",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                width: 350,
                height: 100,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                ),
                child: const Row(children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.redAccent,
                      valueColor: AlwaysStoppedAnimation(Colors.green),
                      strokeWidth: 10,
                      value: 0.2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      "Credit Building",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ));
  }
}
