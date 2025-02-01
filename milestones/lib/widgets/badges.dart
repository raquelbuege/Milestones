import 'package:flutter/material.dart';

class Badges extends StatefulWidget {
  const Badges({super.key});

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    return  Container(
                        width: 325,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              12), // Optional rounded corners
                          color: Color(0xFFF0E9DA), // Background color
                        ),
                        child: Column(
                          children: [
                            const Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 180, 20),
                                child: Text(
                                    style: TextStyle(
                                      color: Color(0xFF90B494),
                                      fontSize: 35,
                                    ),
                                    'Badges')),
                            Container(

                              width: 310,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    12), // Optional rounded corners
                                color: Color.fromARGB(
                                    255, 255, 255, 255), // Background color
                              ),
                              child:
                              Padding(
                                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: SizedBox(
                                width: 380,
                                height: 1,
                                child: ListView(
                                  // This next line does the trick.
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Padding(
                                       padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                       child: 
                                    SizedBox(
                                      width: 160,
                                      height: 1,
                                      child: Container(
                                        width: 100,
                                        height: 1,
                                        color: const Color.fromARGB(
                                            255, 255, 59, 203),
                                      ),
                                    ),
                                    ), 
                                    Padding(
                                       padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                       child: 
                                    SizedBox(
                                      width: 100,
                                      height: 1,
                                      child: Container(
                                        width: 160,
                                        height: 1,
                                        color: const Color.fromARGB(
                                            255, 255, 59, 203),
                                      ),
                                    ),
                                    ),

                                   
                                  Padding(
                                       padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                       child: 
                                    SizedBox(
                                      width: 100,
                                      height: 1,
                                      child: Container(
                                        width: 100,
                                        height: 1,
                                        color: const Color.fromARGB(
                                            255, 255, 59, 203),
                                      ),
                                    ),
                                    )
                                  
                                   
                                  ],
                                ),
                              ),
                              ),
                            ),
                          ],
                        )
    );
  }
}
