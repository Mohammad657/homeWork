import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final double? width;
  final double? height;
  final Color color;
  final int flexNumber;
  const CustomBox({
    super.key,
    this.width,
    this.height,
    required this.color,
    this.flexNumber = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexNumber,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? double.infinity,
        color: color,
      ),
    );
  }
}
