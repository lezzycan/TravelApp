import 'package:bloc_travel_app/constants/trv_assets.dart';
import 'package:bloc_travel_app/constants/trv_color.dart';
import 'package:bloc_travel_app/widgets/trv.text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrvMainButton extends StatelessWidget {
  const TrvMainButton({super.key, this.isResponsive = false, this.width = 120});
  final bool? isResponsive;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 60.h,
        width: width.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: TrvColors.mainColor),
        child: Flexible(
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
                        color: TrvColors.buttonBackground,
                      ),
                    )
                  : Container(),
                  Image.asset(TrvAssets.button),
            ],
          ),
        ),
      ),
    );
  }
}
