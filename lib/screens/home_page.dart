import 'package:flukey_hackathon/screens/settings_view/settings_page_view.dart';
import 'package:flutter/material.dart';
import 'account_view/account_page_view.dart';
import 'home_page_view/home_page_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          bottomNavigationBar: buildBottomTabBar(),
          body: tabBarBody(),
        ),
      ),
    );
  }

  TabBarView tabBarBody() {
    return TabBarView(
      children: [
        SettingsPageView(),
        HomePageView(),
        AccountPageView(),
      ],
    );
  }

  BottomAppBar buildBottomTabBar() {
    return BottomAppBar(
      elevation: 0,
      child: TabBar(
        tabs: [
          Tab(
            icon: SvgPicture.asset(
              'assets/icons/settings.svg',
              height: 30,
              width: 30,
            ),
          ),
          Tab(
            icon: SvgPicture.asset(
              'assets/icons/homepage.svg',
              height: 30,
              width: 30,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.account_box_outlined,
              color: Colors.green,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
