import 'package:flutter/material.dart';
import 'package:leaders_school/util/Collapsing%20NavBar.dart';

import 'webviewer.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting>
    with AutomaticKeepAliveClientMixin<Setting> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      drawer: CollapsingNavigationDrawer(),
      appBar: PreferredSize(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
          child: Card(
            elevation: 6.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: Icon(
                Icons.filter_list,
                color: Colors.white,
              ),
            ),
          ),
        ),
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          60.0,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: Card(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Privacy Policy"),
                subtitle: Text("under construction"),
                onTap: () {},
              ),
              ListTile(
                title: Text("language"),
                subtitle: Text("under construction"),
                onTap: () {},
              ),
              ListTile(
                title: Text("contact us"),
                subtitle: Text(""),
                onTap: () {
                  _bla('http://leaders-schools.com/contact.php',
                      context);
                },
              ),
              ListTile(
                title: Text("about us"),
                subtitle: Text(""),
                onTap: () {
                  _bla('http://www.egdelta.com/about.php', context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  void _bla(String n, BuildContext context) {
    String lol = n;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => myapo(
            x: lol,
          ),
        ));
  }
}
