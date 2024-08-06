import 'package:flutter/material.dart';

class HoverImage extends StatefulWidget {
  final String imagePath;
  final double height;

  const HoverImage({
    super.key,
    required this.imagePath,
    required this.height,
  });

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _opacity = 0.4;
        });
      },
      onExit: (_) {
        setState(() {
          _opacity = 1.0;
        });
      },
      child: Opacity(
        opacity: _opacity,
        child: Container(
          width: double.infinity,
          height: widget.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
