import 'package:bloc_travel_app/pages/nav_pages/account_page.dart';
import 'package:bloc_travel_app/pages/nav_pages/bar_page.dart';
import 'package:bloc_travel_app/pages/home_page.dart';
import 'package:bloc_travel_app/pages/nav_pages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const AccountPage(),
  ];
  void updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white54,
        elevation: 0,
        selectedItemColor: Colors.deepOrangeAccent,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: updateIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart_sharp,
                ),
                label: 'Bar'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Account')
          ]),
    );
  }
}
