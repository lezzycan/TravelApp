import 'package:bloc_travel_app/constants/trv_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrvLargeText extends StatelessWidget {
  const TrvLargeText(
      {super.key,  this.size = 30.0,  this.color = TrvColors.bigTextColor, required this.text});
  final double size;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size.sp, color: color, fontWeight: FontWeight.bold),
    );
  }
}
