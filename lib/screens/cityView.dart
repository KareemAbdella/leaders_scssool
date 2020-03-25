import 'dart:io';
import 'package:leaders_school/screens/about.dart';
import 'package:leaders_school/util/Collapsing%20NavBar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CityView extends StatelessWidget {
  String name;
  String imagPath;
  String description;

  CityView(
      {@required this.name,
      @required this.description,
      @required this.imagPath});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: CollapsingNavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
            child: Image.asset('assets/school_logo.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 10.0,
            child: Image.asset(
              imagPath,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child: Text(
                      name,
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.fade,
                      softWrap: true,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      for (int r = 0; r < 5; r++)
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        )
                    ],
                  )
                ],
              )),
          Divider(),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 18.0,
                color: Color.fromRGBO(2, 2, 49, 0.9),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Contact Info',
              style: TextStyle(
                  color: Color.fromRGBO(2, 2, 49, 0.9),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.blue.shade900,
                  size: 30.0,
                ),
                InkWell(
                  onTap: () => launch("tel://01128632424"),
                  child: Text(
                    '01128632424',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.blue.shade900,
                ),
                Text(
                  '   Egypt',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: RaisedButton(
              color: Color.fromRGBO(2, 2, 49, 0.9),
              child: Text(
                'Join now',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return About();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
