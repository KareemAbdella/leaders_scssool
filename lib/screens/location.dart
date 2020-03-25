import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:leaders_school/util/Collapsing%20NavBar.dart';

class Location extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CollapsingNavigationDrawer(),
        appBar: AppBar(
          iconTheme: new IconThemeData(color: Colors.green),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
              child: Image.asset('assets/school_logo.png'),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Location",
              style: TextStyle(color: Colors.black87),
            ),
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: WebviewScaffold(
          withJavascript: true,
          withLocalStorage: true,
          url:
              'https://www.google.com.eg/maps/place/Leaders+Language+School/@30.0187021,31.4884241,17z/data=!3m1!4b1!4m5!3m4!1s0x145822f9e3fdbec3:0x15a877db29650fa5!8m2!3d30.0187021!4d31.4862354',
        ),
      ),
    );
  }
}
