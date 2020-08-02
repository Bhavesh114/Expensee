import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'Screens/DailyEmpty.dart';
import 'Screens/Stats.dart';
import 'Screens/Add.dart';
import 'Screens/Budget.dart';
import 'Screens/Profile.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      EmptyStateDaily(),
      Statistic(),
      Add(),
      Budget(),
      Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.calendar_today),
        title: ("Daily"),
        activeColor: Color(0xffff3378),
        inactiveColor: Colors.black54,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.graphic_eq),
        title: ("Statistics"),
        activeColor: Color(0xffff3378),
        inactiveColor: Colors.black54,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add, color: Colors.white),
        //title: ("Home"),
        activeColor: Color(0xffff3378),
        inactiveColor: Colors.black54,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_balance_wallet),
        title: ("Budget"),
        activeColor: Color(0xffff3378),
        inactiveColor: Colors.black54,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.perm_identity),
        title: ("Profile"),
        activeColor: Color(0xffff3378),
        inactiveColor: Colors.black54,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),

      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),

      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 600),
      ),

      navBarStyle: NavBarStyle.style15, //
    );
  }
}
