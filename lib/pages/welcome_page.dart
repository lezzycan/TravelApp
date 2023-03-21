import 'package:bloc_travel_app/constants/trv_assets.dart';
import 'package:bloc_travel_app/constants/trv_color.dart';
import 'package:bloc_travel_app/widgets/trv.text.dart';
import 'package:bloc_travel_app/widgets/trv_large_text.dart';
import 'package:bloc_travel_app/widgets/trv_resp.dart';
import 'package:bloc_travel_app/widgets/trv_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

List<String> images = [
  TrvAssets.welcome1,
  TrvAssets.welcome2,
  TrvAssets.welcome3
];

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: ((context, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(images[index]),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 120.h, left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TrvLargeText(text: 'Trips'),
                        const TrvText(
                          text: 'Mountain',
                          size: 30,
                        ),
                        TrvSpace(
                          height: 20.h,
                        ),
                        TrvSpace(
                          width: 250.w,
                          child: TrvText(
                              color: TrvColors.textColor2,
                              size: 14.sp,
                              text:
                                  " Mountain hikes give you an incredible sense of freedom along with endurance test"),
                        ),
                        TrvSpace(
                          height: 40.h,
                        ),
                        const TrvMainButton(
                          width: 120,
                        )
                      ],
                    ),
                    Column(
                        children: List.generate(3, (indexDots) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 8.h),
                        height: index == indexDots ? 25 : 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: index == indexDots
                              ? TrvColors.mainColor
                              : TrvColors.mainColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      );
                    }))
                  ],
                ),
              ),
            );
          })),
    );
  }
}
