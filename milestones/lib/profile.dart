import 'package:flutter/material.dart';
import '../widgets/checkBox.dart';
import '../widgets/progressBar.dart';
import '../widgets/badges.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // Declare the checkbox state here
  bool isChecked = false;

  // This function will be passed down to the child to update the state
  void _updateCheckboxState(bool? newValue) {
    setState(() {
      isChecked = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: ListView(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
          child: Center(
              child: Container(
            width: 450,
            height: 1300,
            decoration: BoxDecoration(
              // Optional rounded corners
              color: Color(0xFF201515), // Background color
            ),
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 40, 200, 0),
                    child: Text(
                        style: TextStyle(
                            color: Color(0xFFC58686),
                            fontSize: 42,
                            fontWeight: FontWeight.bold),
                        'Profile')),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 20, 0),
                       child: Image.asset('assets/images/dorothy.png'   ,
                       width: 130,
                       height: 130),
                    ),
                    const Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 00, 0),
                            child: Text(
                                style: TextStyle(
                                  fontFamily: 'MadeTommy',
                                    color: Color.fromARGB(255, 253, 239, 226),
                                    fontSize: 20,
                                ),
                                'Name: Dorothy Crow')),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 130, 0),
                            child: Text(
                                style: TextStyle(
                                   fontFamily: 'MadeTommy',
                                    color: Color.fromARGB(255, 253, 239, 226),
                                    fontSize: 20,
                                ),
                                'Age: 21')),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 45, 0),
                            child: Text(
                                style: TextStyle(
                               fontFamily: 'MadeTommy',
                                    color: Color.fromARGB(255, 253, 239, 226),
                                    fontSize: 20,
                                ),
                                'Gender: Woman'))
                      ],
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                    child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 197, 134, 134),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 7),
                                child:const Column(
                              children: [
                                
                                 
                         
                                SizedBox(height: 5),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 210, 0),
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    "Progress Bar", // Left-side label
                                    style: TextStyle(
                                      fontFamily: 'MadeTommy',
                                      color: Color.fromARGB(255, 253, 239, 226),
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 1),
                                ProgressBar(),
                              ],
                            )
                              )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                    child: Badges()),
                Center(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 00, 0),
                  child: Container(
                      width: 370,
                      height: 305,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            12), // Optional rounded corners
                        color:Color(0xFFFDEFE2), // Background color
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 00, 0),
                        child: Column(
                          children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
            child: Text(
             textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xFFC58686),
                            fontSize: 30,

                              fontFamily: 'MadeTommy',
                            
                            )
                            
                            ,
                        'Financial Goals')
          ),  

                            Row(
                              children: [
                                
                                   CheckboxExample(

                                  // Pass the state down
                                  initialChecked: true,
                                  onChanged:
                                      _updateCheckboxState, // Pass the function to update state
                                ),
                                
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                    child: Text(
                                        style: TextStyle(
                                          color:Color(0xFF201515),
                                          fontSize: 22,
                                          fontFamily: 'MadeTommy',
                                        ),
                                        'Building Credit')),
                              ],
                            ),
                            Row(
                              children: [
                                   CheckboxExample(
                                  // Pass the state down
                                  initialChecked: true,
                                  onChanged:
                                      _updateCheckboxState, // Pass the function to update state
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                        style: TextStyle(
                                          color: Color(0xFF201515),
                                          fontSize: 22,
                                          fontFamily: 'MadeTommy',
                                        ),
                                        'Retirement Set Up')),
                              ],
                            ),
                            Row(
                              children: [
                                CheckboxExample(
                                  // Pass the state down
                                  initialChecked: true,
                                  onChanged:
                                      _updateCheckboxState, // Pass the function to update state
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                        style: TextStyle(
                                          color: Color(0xFF201515),
                                          fontSize: 22,
                                          fontFamily: 'MadeTommy',
                                        ),
                                        'Investing')),
                              ],
                            ),
                            Row(
                              children: [
                                   CheckboxExample(
                                  // Pass the state down
                                  initialChecked: true,
                                  onChanged:
                                      _updateCheckboxState, // Pass the function to update state
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                        style: TextStyle(
                                          color: Color(0xFF201515),
                                          fontSize: 22,
                                          fontFamily: 'MadeTommy',
                                        ),
                                        'Emergency Fund')),
                              ],
                            ),
                            Row(
                              children: [
                                  CheckboxExample(
                                  // Pass the state down
                                  initialChecked: isChecked,
                                  onChanged:
                                      _updateCheckboxState, // Pass the function to update state
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0,0),
                                    child: Text(
                                        style: TextStyle(
                                          color:Color(0xFF201515),
                             
                                          fontSize: 22,
                                          fontFamily: 'MadeTommy',
                                        ),
                                        'Mortage')),
                              ],
                            ),
                          ],
                        ),
                      )),
                )),
              ],
            ),
          )),
        )
      ]),
    );
  }
}