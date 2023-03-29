import 'package:bloc_travel_app/constants/trv_assets.dart';
import 'package:bloc_travel_app/constants/trv_color.dart';
import 'package:bloc_travel_app/widgets/trv.text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrvMainButton extends StatelessWidget {
  const TrvMainButton(
      {super.key,
      this.isResponsive = false,
    required  this.width,
      required this.onPressed});
  final bool? isResponsive;
  final double width;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 60.h,
          width: width.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: TrvColors.mainColor),
          child: Row(
            mainAxisAlignment: isResponsive == true
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              isResponsive == true
                  ? Container(
                      margin: EdgeInsets.only(left: 20.w),
                      child: const TrvText(
                        text: "Book Trip Now",
                        size: 16.0,
                        color: TrvColors.buttonBackground,
                      ),
                    )
                  : Container(),
             Expanded(child: Image.asset(TrvString.button)),
            ],
          ),
        ),
      ),
    );
  }
}
