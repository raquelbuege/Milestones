import 'package:flutter/material.dart';
// import 'package:milestones/userVM.dart';
// import 'package:provider/provider.dart';
// import 'circleprogress.dart';

import 'package:milestones/widgets/expandedcontainer.dart';
import 'package:milestones/widgets/badges.dart';
import 'package:milestones/widgets/agebar.dart';
import 'package:milestones/widgets/gif.dart';
import 'package:milestones/widgets/progressbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 253, 239, 226),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 40,
                    ), //spacing before 'young professional'
                    Column(
                      children: [
                        const ExpansionTileExample(),
                        const SizedBox(
                            height:
                                5), //spacing between 'young professional' and progress bars
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromARGB(255, 197, 134, 134),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            child: const Column(
                              children: [
                                
                                  Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 270, 0),
                                child: Text(
                                  textAlign: TextAlign.left,
                                  "Age Bar", // Left-side label
                                  style: TextStyle(
                                    fontFamily: 'MadeTommy',
                                    color: Color.fromARGB(255, 253, 239, 226),
                                    fontSize: 20,
                                  ),
                                ),
                                  ),
                                AgeBar(),
                                SizedBox(height: 27),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 225, 0),
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
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 110),
                    Container(
                      width: double.infinity,
                      child: gif(),
                    )
                  ],
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   child: gif(),
              // ),
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 32, 21, 21),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 70),
                  child: Badges(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

  // return SingleChildScrollView(
  //   child: Column(
  //     crossAxisAlignment: CrossAxisAlignment.stretch,
  //     children: [
  //       // First half background
  //       Container(
  //         width: double.infinity,
  //         color: Color.fromARGB(255, 253, 239, 226),
  //         child: Column( 
  //           children: [
  //               const SizedBox(height: 40,), //spacing before 'young professional'
  //               Column(
  //                 children: [
  //                   const ExpansionTileExample(), 
  //                   const SizedBox(height: 20), //spacing between 'young professional' and progress bars
  //                   Padding(
  //                     padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
  //                     child: Container(
  //                         decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(12),
  //                           color: Color.fromARGB(255, 197, 134, 134),
  //                         ),
  //                         padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
  //                         child: const Column(
  //                           children: [
  //                             AgeBar(),
  //                             SizedBox(height: 50),
  //                             ProgressBar(),
  //                           ],
  //                         ),
  //                       ),
  //                   )
  //                 ],
  //               ),
  //               const SizedBox(height: 60),
  //             Container(
  //               width: double.infinity,
  //               child: gif(),
  //             ) 
  //           ],
  //         ),
  //       ),
  //       // Second half background
  //       Container(
  //         width: double.infinity,
  //         color: Color.fromARGB(255, 32, 21, 21),
  //         child: Padding(
  //           padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
  //           child: Badges(),
  //         ),
  //       ),
  //     ],
  //   ),
  // );
// }
// }

    // Access UserModel from UserViewModel using Provider
    // final userViewModel = Provider.of<UserViewModel>(context);
    // final user = userViewModel.user; // Get user data

    // return Container(
    //   color: const Color(0xffC4DFCB),
    //   child: ListView(
    //     children: [
    //       const ExpansionTileExample(),
    //       Padding(
    //         padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
    //           child: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12), // Optional rounded corners
    //               color: Color.fromARGB(255, 197, 134, 134), // Background color
    //             ),
    //             child: const Padding(
    //               padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
    //               child: Column(
    //                 children: [
    //                   AgeBar(),
    //                   const SizedBox(height: 50),
    //                   ProgressBar(),
    //                 ]
    //               ),
    //             ),
    //           )
    //       ),
    //       Padding(
    //                 padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
    //           child: Badges()
    //            ),
    //     ],
    //   ),
    // );


