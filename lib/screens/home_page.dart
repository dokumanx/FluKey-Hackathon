import 'package:flukey_hackathon/bloc/authentication/authentication_bloc.dart';
import 'package:flukey_hackathon/screens/settings_view/settings_page_view.dart';
import 'package:flukey_hackathon/services/firebase_service.dart';
import 'package:flukey_hackathon/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'account_screen/account_page_view.dart';
import 'home_page/home_page_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: SafeArea(
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
        indicatorColor: Colors.orange,
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
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
