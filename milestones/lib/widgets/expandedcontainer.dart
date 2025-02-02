import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  bool isExpanded = false;


  @override
  Widget build(BuildContext context) {
    // return Container(
      // padding: const EdgeInsets.all(10),
      // decoration: BoxDecoration(
      //   color: Color.fromARGB(255, 215, 205, 180),
      //   borderRadius: BorderRadius.circular(8),
      // ),
      // child: Stack(
      //   children: [
      //     const Padding(padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      //     child: Text(
      //         style: TextStyle(
      //           color: Color(0xFF90B494),
      //           fontSize: 35,
      //         ),
      //         'Badges')),
      //     const Padding(padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),    
      //       child: ReadMoreText(
      //         'The Young Professional Financial Growth Phase is foundational for building habits that will shape future financial success. By focusing on managing debt, saving, investing early, and learning about personal finances, young professionals set themselves up for greater financial stability and growth in the coming years.',
      //         trimLines: 1,
      //         colorClickableText: Color.fromARGB(255, 115, 110, 117),
      //         trimMode: TrimMode.Line,
      //         trimCollapsedText: 'Show more',
      //         trimExpandedText: 'Show less',
      //         style: TextStyle(
      //           height: 1.25,
      //           fontFamily: 'Coolvetica',
      //           fontSize: 18,
      //           color: Color.fromARGB(255, 53, 45, 57),
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: 0,
      //       right: 0,
      //       child: Container(
      //         width: 30, // Set a specific width
      //         height: 30,
      //         decoration: BoxDecoration(
      //           color: Color.fromARGB(255, 209, 123, 136),
      //           borderRadius: BorderRadius.circular(45),
                
      //         ),
      //         child: IconButton(
      //           iconSize: 20,
      //           padding: EdgeInsets.all(4), 
      //           onPressed: () {
      //             setState(() {
      //               showDesc = !showDesc;
      //             });
      //           },
      //           icon: Icon(
      //             Icons.switch_access_shortcut,
      //             color: Color.fromARGB(255, 84, 73, 89), //Color.fromARGB(255, 237, 232, 221)
      //           ),
      //         ),
      //       ),
      //     ),
    //     ],
    //   ),
    // );
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Center(
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent), // Remove the border or stroke
                color: Color.fromARGB(255, 197, 134, 134),
                borderRadius: BorderRadius.circular(8),
              ),
              width: 400,
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15,),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Growth Phase:',
                            style: TextStyle(
                                  fontFamily: 'MadeTommy',
                                fontWeight: FontWeight.w500,
                                // fontStyle: FontStyle.italic,
                                fontSize: 20, // Adjust font size
                                height: 0.5,
                                color: Color.fromARGB(255, 114, 69, 101), // Set a different color
                              ),
                          ),
                        ),
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          tilePadding: EdgeInsets.zero,
                          title: const Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                'Young Professional',
                                style: TextStyle(
                                  fontFamily: 'MadeTommy',
                                  height: 1,
                                  fontSize: 31, // Adjust font size
                                  fontWeight: FontWeight.bold, // Make text bold
                                  color: Color.fromARGB(255, 253, 239, 226), // Set text color
                                ),
                              )
                          ),
                          onExpansionChanged: (bool expanded) {
                            setState(() {
                              isExpanded = expanded; // Update the state when expanded/collapsed
                            });
                          },
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 20, right: 20), // Adjust this value to move the arrow
                            child: Icon(
                              color: Color.fromARGB(255, 253, 239, 226), 
                              size: 30,
                              isExpanded ?  Icons.arrow_drop_up_rounded : Icons.arrow_drop_down_rounded
                            ),
                          ),
                          children: const <Widget>[
                            ListTile(title: Text(
                              'The Young Professional Financial Growth Phase is foundational for building habits that will shape future financial success. By focusing on managing debt, saving, investing early, and learning about personal finances, young professionals set themselves up for greater financial stability and growth in the coming years.',
                              style: TextStyle(
                                  fontFamily: 'CreatoDisplay',
                                  fontSize: 20, // Adjust font size
                                  color: Color.fromARGB(255, 253, 239, 226), // Set text color
                                ),
                              )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Positioned(
                  // bottom: 10,
                  // right: 10,
                  // child: Icon(
                  //   isExpanded ? Icons.arrow_drop_up_rounded : Icons.arrow_drop_down_rounded,
                  //   size: 30, // Adjust size as needed
                  // ),
                  // ),
                ],
              ), 
          )
      ),
    );
  }
}
