import 'package:bloc_travel_app/constants/trv_assets.dart';
import 'package:bloc_travel_app/constants/trv_color.dart';
import 'package:bloc_travel_app/cubit/trv_cubits.dart';
import 'package:bloc_travel_app/cubit/trv_cubits_state.dart';
import 'package:bloc_travel_app/shared/dot_tab_indicator.dart';
import 'package:bloc_travel_app/widgets/trv.text.dart';
import 'package:bloc_travel_app/widgets/trv_large_text.dart';
import 'package:bloc_travel_app/widgets/trv_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<String> cardImages = [
    TrvString.ballon,
    TrvString.hiking,
    TrvString.kayak,
    TrvString.snork
  ];
  List<String> cardText = ['Ballon', 'Hiking', 'Kayaking', 'Snorking'];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(body: BlocBuilder<TrvCubits, CubitState>(
      builder: (context, state) {
        if (state is LoadedStates) {
          var info = state.places;
          return Padding(
            padding: const EdgeInsets.only(
              top: 70.0,
              left: 20,
              //  right: 20,
            ),
            child: SingleChildScrollView(
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
                      indicator: CircleTabIndicator(
                          color: TrvColors.mainColor, radius: 4.r),
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
                  const TrvSpace(
                    height: 20,
                  ),
                  TrvSpace(
                    height: 300.h,
                    width: double.maxFinite,
                    child: TabBarView(controller: _tabController, children: [
                      TrvSpace(
                        height: 400.h,
                        child: ListView.builder(
                          itemCount: info.length,
                          scrollDirection: Axis.horizontal,
                          // layout: SwiperLayout.DEFAULT,
                          // itemWidth: 200.w,
                          // pagination: const SwiperPagination(),
                          // control: const SwiperControl(),
                          //   viewportFraction: 0.7,
                          // scale: 0.85,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (() {
                                BlocProvider.of<TrvCubits>(context)
                                    .detailPage(info[index]);
                              }),
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 300.h,
                                width: 200.h,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(TrvString.moutain),
                                    // ignore: prefer_interpolation_to_compose_strings
                                    // image: NetworkImage("http://" + info[index].img),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(18.r),
                                ),
                                child: Container(
                                  margin: const EdgeInsets.only(left: 20, bottom: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      TrvText(
                                        text: 'Hey boo',
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      TrvText(
                                        text: 'fuck off',
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const Text('house'),
                      const Text('Spicy'),
                    ]),
                  ),
                  TrvSpace(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TrvLargeText(
                        text: "Explore more",
                        size: 22,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: const TrvText(
                            text: "See all",
                            color: TrvColors.mainColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  TrvSpace(
                    height: 15.h,
                  ),
                  TrvSpace(
                    height: 100.h,
                    width: double.maxFinite,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: ((_, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 30.0),
                                height: 80.h,
                                width: 80.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10.r),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(cardImages[index]),
                                  ),
                                ),
                              ),
                              //  child: Image(image: AssetImage(cardImages[index])),

                             Container(
                               margin: const EdgeInsets.only(right: 30.0),
                                child: TrvText(
                                  text: cardText[index],
                                  color: TrvColors.textColor2,
                                ),
                              ),
                            ],
                          );
                        })),
                  )
                ],
              ),
            ),
          );
        }
        return Container();
      },
    ));
  }
}
