import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';

class gif extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ypGif();
}

class ypGif extends State<gif>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<Offset> _animation;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: GifView.asset(
        'assets/young-prof-background.gif',
        width: double.infinity,
        frameRate: 30,
      )
    ); 
    
    // return Container(
    //   width: 400,
    //   height: 200,
    //   child:  GifView.asset(
    //     'assets/young-prof-background.gif',
    //     height: 200,
    //     width: 200,
    //     frameRate: 30, 
    // )
    // );
  }
}