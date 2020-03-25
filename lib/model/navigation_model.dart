import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationModel{
  String title;
  IconData icon;
  String url =" ";
  NavigationModel( {@required this.title,@required this.icon, this.url});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Website Home", icon: Icons.home),
  NavigationModel(title: "About", icon: Icons.info_outline),
  NavigationModel(title: "E-Learning", icon: Icons.book),
  NavigationModel(title: "Admission", icon: Icons.exposure_plus_1),
  NavigationModel(title: "Sports", icon: Icons.directions_bike),
  NavigationModel(title: "Activities", icon: Icons.card_travel),
  NavigationModel(title: "Labs", icon: Icons.bubble_chart ),
  NavigationModel(title: "News", icon: Icons.new_releases),
  NavigationModel(title: "Contact Us", icon: Icons.contact_phone),
  NavigationModel(title: "Location", icon: Icons.map ),
];