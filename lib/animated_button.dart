library animated_button;

import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
    this.color = Colors.white,
    required this.radius,
    required this.onTap,
  }) : super(key: key);
  final Color color;
  final double height;
  final double width;
  final Widget child;
  final BorderRadius radius;
  final VoidCallback onTap;

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (details) {
        setState(() {
          _scale = 1.5;
        });
      },
      onTapUp: (details) {
        setState(() {
          _scale = 1.0;
        });
      },
      child: AnimatedContainer(
        height: widget.height * _scale,
        width: widget.width * _scale,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: widget.radius,
        ),
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        child: Center(child: widget.child),
      ),
    );
  }
}
