import 'package:flutter/material.dart';
import 'package:leaders_school/model/bottomnavbar.dart';
import 'package:leaders_school/models/NavBaricon.dart';
import 'package:leaders_school/screens/contact.dart';
import 'package:leaders_school/screens/news.dart';
import 'package:leaders_school/screens/setting.dart';
import 'package:leaders_school/util/Collapsing%20NavBar.dart';
import 'activity.dart';
import 'home.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CollapsingNavigationDrawer(),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: onPageChanged,
          children: <Widget>[
            Homes(),
            activity(),
            News(),
            Contact_us(),
            Setting(),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _page,
          items: navbaritems,
          onItemSelected: (index) => setState(() {
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
        ));
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
