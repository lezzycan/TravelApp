import 'package:bloc_travel_app/constants/trv_assets.dart';
import 'package:bloc_travel_app/constants/trv_color.dart';
import 'package:bloc_travel_app/widgets/responsive_button.dart';
import 'package:bloc_travel_app/widgets/trv.text.dart';
import 'package:bloc_travel_app/widgets/trv_rounded_container.dart';
import 'package:bloc_travel_app/widgets/trv_large_text.dart';
import 'package:bloc_travel_app/widgets/trv_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> num = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];
  int selectedIndex = 0;
  int gottenStars = 4;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: TrvSpace(
        height: double.infinity,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: size.height * 0.35,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(TrvAssets.moutain), fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              left: 20.w,
              top: 70.h,
              child: const Icon(
                Icons.menu,
                size: 30,
                color: TrvColors.white,
              ),
            ),
            Positioned(
              right: 20.w,
              top: 70.h,
              child: const Icon(
                Icons.more_vert_sharp,
                size: 30,
                color: TrvColors.white,
              ),
            ),
            Positioned(
              top: 250,
              child: TrvSpace(
                height: size.height * 0.75,
                width: size.width,
                //  color: TrvColors.white,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            TrvLargeText(
                              text: 'Yosemite',
                              color: TrvColors.textColor2,
                            ),
                            TrvLargeText(
                              text: '\$ 250',
                              color: TrvColors.red,
                            ),
                          ],
                        ),
                        const TrvSpace(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on_sharp,
                              color: TrvColors.mainColor,
                            ),
                            TrvSpace(
                              width: 10,
                            ),
                            TrvText(
                              text: 'Lagos, Nigeria',
                              color: TrvColors.textColor1,
                            )
                          ],
                        ),
                        const TrvSpace(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Wrap(
                              alignment: WrapAlignment.start,
                              children: List.generate(
                                5,
                                (index) => Icon(
                                  Icons.star,
                                  color: index < gottenStars
                                      ? TrvColors.starColor
                                      : TrvColors.textColor2,
                                ),
                              ),
                            ),
                            const TrvSpace(
                              width: 5.0,
                            ),
                            const TrvText(text: "(4.0)"),
                          ],
                        ),
                        const TrvSpace(
                          height: 30,
                        ),
                        const TrvLargeText(
                          text: 'People',
                          color: TrvColors.bigTextColor,
                          size: 24,
                        ),
                        const TrvSpace(
                          height: 5,
                        ),
                        const TrvText(
                          text: 'Number of people in your group',
                          color: TrvColors.mainTextColor,
                        ),
                        const TrvSpace(
                          height: 15,
                        ),
                        Wrap(
                          spacing: 10,
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: (() {
                                setState(() {
                                  selectedIndex = index;
                                });
                              }),
                              child: RoundedContainer(
                                  
                                  size: 55.h,
                                  isIcon: false,
                                  text: (index + 1).toString(),
                                  color: index == selectedIndex
                                      ? TrvColors.white
                                      : TrvColors.bigTextColor,
                                  backgroundColor: index != selectedIndex
                                      ? TrvColors.buttonBackground
                                      : TrvColors.bigTextColor,
                                  borderColor: Colors.black.withOpacity(0.0)),
                            );
                          }),
                        ),
                        const TrvSpace(
                          height: 25,
                        ),
                        const TrvLargeText(
                          text: 'Description',
                          color: TrvColors.bigTextColor,
                          size: 24,
                        ),
                        TrvSpace(
                          height: 10.h,
                        ),
                        const Flexible(
                          child: TrvText(
                            text:
                                "You must go for a travel, Travelling helps get ride of pressure. Visit the contains to see the nature",
                            color: TrvColors.bigTextColor,
                          ),
                        ),
                        TrvSpace(
                          height: 25.h,
                        ),
                        Row(
                          children: [
                            RoundedContainer(
                                isIcon: true,
                                icon: Icons.favorite_sharp,
                                size: 55.h,
                                color: Colors.black,
                                backgroundColor: TrvColors.buttonBackground,
                                borderColor: Colors.black,
                               ),
                               TrvSpace(width: 20.w,),
                            ResponsiveButton(
                              isResponsive: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
