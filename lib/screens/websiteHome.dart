import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:leaders_school/util/Collapsing%20NavBar.dart';

class WebsiteHome extends StatefulWidget {
  @override
  _gidoState createState() => _gidoState();
}

class _gidoState extends State<WebsiteHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CollapsingNavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
            child: Image.asset('assets/school_logo.png'),
          ),
        ],
        elevation: 0.0,
        title: Text("Home Page" , style: TextStyle(color: Colors.black87),),
        centerTitle: true,
        automaticallyImplyLeading: false,

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: WebviewScaffold(
          withJavascript: true,
          withLocalStorage: true,
          url:  'http://leaders-schools.com/',
        ),
      ),
    );
  }
}
