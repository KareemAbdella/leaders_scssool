import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:leaders_school/util/Collapsing%20NavBar.dart';

class activity extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<activity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer:
        CollapsingNavigationDrawer(),
        appBar: AppBar(
          iconTheme: new IconThemeData(color: Colors.green),
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Activities",
              style: TextStyle(color: Colors.black87),
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
              child: Image.asset('assets/school_logo.png'),
            ),
          ],
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: WebviewScaffold(
          withJavascript: true,
          withLocalStorage: true,
          url: 'http://leaders-schools.com/activities.php',
        ),
      ),
    );
  }
}
