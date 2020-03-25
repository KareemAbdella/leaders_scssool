import 'package:flutter/material.dart';
import 'package:leaders_school/model/themes.dart';
import 'package:leaders_school/screens/Labs.dart';
import 'package:leaders_school/screens/Sports.dart';
import 'package:leaders_school/screens/about.dart';
import 'package:leaders_school/screens/activity.dart';
import 'package:leaders_school/screens/admission.dart';
import 'package:leaders_school/screens/contact.dart';
import 'package:leaders_school/screens/courses.dart';
import 'package:leaders_school/screens/location.dart';
import 'package:leaders_school/screens/news.dart';
import 'package:leaders_school/screens/websiteHome.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;

  CollapsingListTile(
      {@required this.title,
      @required this.icon,
      @required this.animationController});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  Animation<double> _widthAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _widthAnimation =
        Tween<double>(begin: 250, end: 70).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _widthAnimation.value,
      margin: EdgeInsets.symmetric(horizontal: 9.0, vertical: 8.0),
      child: InkWell(
        onTap: () {
          if (widget.title == "Website Home") {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => WebsiteHome()));
          } else if (widget.title == "About") {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => About()));
          } else if (widget.title == "E-Learning") {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => CoursesPage()));
          } else if (widget.title == "Admission") {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Admission()));
          } else if (widget.title == "Sports") {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => Sports()));
          } else if (widget.title == "Activities") {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => activity()));
          } else if (widget.title == "Labs") {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => Labs()));
          } else if (widget.title == "News") {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => News()));
          } else if (widget.title == " Contact Us") {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Contact_us()));
          } else if (widget.title == "Location") {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Location()));
          }
        },
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              color: Colors.green,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            (_widthAnimation.value >= 220)
                ? Text(
                    widget.title,
                    style: listTitleSelectedTextStyle,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
