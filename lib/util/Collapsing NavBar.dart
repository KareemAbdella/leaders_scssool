import 'package:flutter/material.dart';
import 'package:leaders_school/model/collapsing_list_tile.dart';
import 'package:leaders_school/model/navigation_model.dart';
import 'package:leaders_school/model/themes.dart';


class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  _CollapsingNavigationDrawerState createState() =>
      _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double minWidth = 70;
  double maxWidth = 250;
  bool isCollapsid = false;
  AnimationController _animationcontroller;
  Animation<double> widthAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animationcontroller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationcontroller, builder: (context, widget) {
          return getWidget(context,widget);
    });
  }
Widget getWidget(_,widget){
    return Container(
      color: drawerBackgroundColor,
      width: widthAnimation.value,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          CollapsingListTile(
            title: "  Leader's Nat.",
            icon: Icons.school,
            animationController: _animationcontroller,
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: navigationItems.length,
              itemBuilder: (_, counter) {
                return CollapsingListTile(
                  title: navigationItems[counter].title,
                  icon: navigationItems[counter].icon,
                  animationController: _animationcontroller,
                );
              },
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isCollapsid = !isCollapsid;
                isCollapsid ? _animationcontroller.forward() : _animationcontroller.reverse();
              });
            },
            child: Icon(
               !isCollapsid? Icons.arrow_left : Icons.arrow_right,
              color: Colors.greenAccent,
              size: 50,
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
}
}
