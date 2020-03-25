import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class myapo extends StatelessWidget {
  final String x;

  myapo({Key key, this.x}) : super (key: key);


  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: new WebviewScaffold(

        withJavascript: true,
        withLocalStorage: true,


        url: '$x',

      ),
    );
  }


}