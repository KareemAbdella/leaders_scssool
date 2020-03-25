import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:leaders_school/util/Collapsing%20NavBar.dart';

class Admission extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Admission> {
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
              "ِAdmission",
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
          url: 'http://leaders-schools.com/admissions.php',
        ),
      ),
    );
  }
}
