import 'package:flutter/material.dart';
import '../widgets/checkBox.dart';
import '../widgets/progressBar.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
          child: Center(
              child: Container(
            width: 380,
            height: 700,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(12), // Optional rounded corners
              color: Color(0xFF1B1C3A), // Background color
            ),
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 40, 200, 0),
                    child: Text(
                        style: TextStyle(
                            color: Color(0xFF98A6D4),
                            fontSize: 42,
                            fontWeight: FontWeight.bold),
                        'Profile')),
                const Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(50, 10, 20, 0),
                        child: Icon(
                          Icons.person,
                          color: Color(0xFF8E93A6),
                          size: 80,
                        )),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 00, 0),
                            child: Text(
                                style: TextStyle(
                                  color: Color(0xFFF0E9DA),
                                  fontSize: 20,
                                ),
                                'Name: Dorothy Crow')),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 120, 0),
                            child: Text(
                                style: TextStyle(
                                  color: Color(0xFFF0E9DA),
                                  fontSize: 20,
                                ),
                                'Age: 21')),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 45, 0),
                            child: Text(
                                style: TextStyle(
                                  color: Color(0xFFF0E9DA),
                                  fontSize: 20,
                                ),
                                'Gender: Woman'))
                      ],
                    ),
                  ],
                ),
                Center(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 00, 0),
                  child: Container(
                      width: 340,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            12), // Optional rounded corners
                        color: Color(0xFFF0E9DA), // Background color
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(30, 20, 00, 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CheckboxExample(),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                        style: TextStyle(
                                          color: Color(0xFF36395F),
                                          fontSize: 22,
                                        ),
                                        'Building Credit')),
                              ],
                            ),
                            Row(
                              children: [
                                CheckboxExample(),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                        style: TextStyle(
                                          color: Color(0xFF36395F),
                                          fontSize: 22,
                                        ),
                                        'Retirement Set Up')),
                              ],
                            ),
                            Row(
                              children: [
                                CheckboxExample(),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                        style: TextStyle(
                                          color: Color(0xFF36395F),
                                          fontSize: 22,
                                        ),
                                        'Stocks')),
                              ],
                            ),
                            Row(
                              children: [
                                CheckboxExample(),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                        style: TextStyle(
                                          color: Color(0xFF36395F),
                                          fontSize: 22,
                                        ),
                                        'Emergency Fund')),
                              ],
                            ),
                            Row(
                              children: [
                                CheckboxExample(),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                        style: TextStyle(
                                          color: Color(0xFF36395F),
                                          fontSize: 22,
                                        ),
                                        'Mortage')),
                              ],
                            ),
                          ],
                        ),
                      )),
                )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                    child: ProgressBar()),
              ],
            ),
          ))),
    );
  }
}
