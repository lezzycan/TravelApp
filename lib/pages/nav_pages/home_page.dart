import 'package:bloc_travel_app/constants/trv_assets.dart';
import 'package:bloc_travel_app/constants/trv_color.dart';
import 'package:bloc_travel_app/shared/dot_tab_indicator.dart';
import 'package:bloc_travel_app/widgets/trv_large_text.dart';
import 'package:bloc_travel_app/widgets/trv_space.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70.0,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30.sp,
                  color: TrvColors.bigTextColor,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 50.h,
                  width: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: TrvColors.bigTextColor),
                ),
              ],
            ),
            TrvSpace(
              height: 20.h,
            ),
            const TrvLargeText(text: 'Discover'),
            TrvSpace(
              height: 20.h,
            ),
            TabBar(
                controller: _tabController,
                labelColor: TrvColors.bigTextColor,
                unselectedLabelColor: TrvColors.indigo.shade200,
                isScrollable: true,
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                indicatorSize: TabBarIndicatorSize.label,
                indicator:
                    CircleTabIndicator(color: TrvColors.mainColor, radius: 4.r),
                labelStyle: const TextStyle(fontSize: 18),
                tabs: const [
                  Tab(
                    text: 'Places',
                  ),
                  Tab(
                    text: 'Inspiration',
                  ),
                  Tab(
                    text: 'Emotions',
                  )
                ]),
               const TrvSpace(height: 20,),
            TrvSpace(
              height: 300.h,
              width: double.maxFinite,
              child: TabBarView(controller: _tabController, children: [
                TrvSpace(
                  height: 400.h,
                  child: Swiper(
                    itemCount: 3,
                    layout: SwiperLayout.DEFAULT,
                   // itemWidth: 200.w,
                   // pagination: const SwiperPagination(),
                   // control: const SwiperControl(),
                    viewportFraction: 0.7,
                    scale: 0.85,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 300.h,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(TrvAssets.moutain),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text('Hey boo'),
                            SizedBox(height: 8,),
                            Text('fuck off')
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Text("Hello"),
                Text('Spicy'),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
