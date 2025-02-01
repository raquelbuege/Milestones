import 'package:flutter/material.dart';

class Endlessscroll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EndlessScrollState();
}

class _EndlessScrollState extends State<Endlessscroll>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<Offset> _animation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(),
      child: OverflowBox(
        maxWidth: 400,
        child: SlideTransition(
          position: _animation,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/bg_1.png',
                width: 400,
                height: 200,
              ),
              Image.asset(
                'assets/images/bg_2.png',
                width: 400,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    )..repeat();

    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-1, 0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear, // This ensures smooth movement
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
