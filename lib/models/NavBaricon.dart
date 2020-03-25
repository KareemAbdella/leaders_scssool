import 'package:flutter/material.dart';
import 'package:leaders_school/model/bottomnavbar.dart';

List<BottomNavyBarItem> navbaritems = [
  BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home"), activeColor: Colors.blue , inactiveColor: Colors.green),
  BottomNavyBarItem(icon: Icon(Icons.local_activity), title: Text("Activity"), activeColor: Colors.blue , inactiveColor: Colors.green),
  BottomNavyBarItem(icon: Icon(Icons.new_releases), title: Text("News"), activeColor: Colors.blue, inactiveColor: Colors.green),
  BottomNavyBarItem(
      icon: Icon(Icons.perm_contact_calendar), title: Text("Contact us"), activeColor: Colors.blue , inactiveColor: Colors.green),
  BottomNavyBarItem(icon: Icon(Icons.settings), title: Text("Setting"), activeColor: Colors.blue , inactiveColor: Colors.green),

];
