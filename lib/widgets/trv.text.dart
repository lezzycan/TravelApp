import 'package:bloc_travel_app/constants/trv_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrvText extends StatelessWidget {
  const TrvText(
      {super.key,
      this.size = 16.0,
      this.color = TrvColors.textColor1,
      required this.text});
  final double size;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size.sp,
        color: color,
      ),
    );
  }
}
