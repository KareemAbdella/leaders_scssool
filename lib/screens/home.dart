import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:leaders_school/util/Collapsing%20NavBar.dart';
import 'package:leaders_school/util/categories.dart';
import 'package:leaders_school/util/teachers.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'about.dart';

enum options { Location, Home, Activity, About, Admission, Logout }

class Homes extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//List<String> categ = cat;

class _HomeState extends State<Homes>
    with AutomaticKeepAliveClientMixin<Homes>, SingleTickerProviderStateMixin {
  @override
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
  }

  int x = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    Widget carousel = new CarouselSlider(
      height: 400.0,
      autoPlay: true,
      aspectRatio: 20,
      // Number of Photos
      items: [0, 1].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Image.asset(
                  cat[i]['img'],
                  fit: BoxFit.fitHeight,
                ));
          },
        );
      }).toList(),
    );
    super.build(context);
    return SafeArea(
      bottom: true,
      child: Scaffold(
        drawer: CollapsingNavigationDrawer(),
        drawerScrimColor: Colors.white30,
        appBar: AppBar(
          iconTheme: new IconThemeData(color: Colors.green),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
              child: Image.asset('assets/school_logo.png'),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(

                          //bottomRight: Radius.circular(90),
                          bottomLeft: Radius.circular(1))),
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  height: screenHeight * 0.45,
                  width: screenwidth,
                  child: new ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: new Stack(
                      children: [
                        carousel,
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 300,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xffffffff)),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: WebView(
                    initialUrl:
                        'http://leaders-schools.com/video/leaders-schools.mp4',
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              /* Add Mission and vision and moto from here */

              Divider(
                height: 100,
              ),
              Center(
                  child: InkWell(
                onTap: () =>
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return About();
                })),
                child: Text(
                  "Our Mission",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              )),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, left: 8, right: 8, bottom: 8),
                    child: Container(
                      color: Colors.white30,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "images/our_mission.png",
                      height: 40,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 45, 8, 8),
                    child: Center(
                        child: Text(
                      "At Leaders School, we believe that our children are the future of our country. We therefore aspire to become the model school which promotes moral, physical, creative, emotional and academic excellence through a broad, balanced and relevant education —in an effective environment, By teaching our children to learn, to understand, to think and to adapt to our ever changing environment, By developing their abilities to their full potential, helping them to realize their dreams within the wider community, By providing them with the right tools to develop into mature adults, through our qualified human resources, our excellent environment and the democratic participation of the school’s parents and stakeholders.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.2, color: Colors.black45, fontSize: 20),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              Divider(
                height: 10,
              ),
              Center(
                  child: InkWell(
                onTap: () =>
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return About();
                })),
                child: Text(
                  "Our Vision",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              )),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, left: 8, right: 8, bottom: 8),
                    child: Container(
                      color: Colors.white30,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "images/our_vision.png",
                      height: 40,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 45, 8, 8),
                    child: Center(
                        child: Text(
                      "At Leaders School, we believe that our children are the future of our country. We therefore aspire to become the model school which promotes moral, physical, creative, emotional and academic excellence through a broad, balanced and relevant education —in an effective environment, By teaching our children to learn, to understand, to think and to adapt to our ever changing environment, By developing their abilities to their full potential, helping them to realize their dreams within the wider community, By providing them with the right tools to develop into mature adults, through our qualified human resources, our excellent environment and the democratic participation of the school’s parents and stakeholders.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.2, color: Colors.black45, fontSize: 20),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              Divider(
                height: 10,
              ),
              Center(
                  child: InkWell(
                onTap: () =>
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return About();
                })),
                child: Text(
                  "Our Moto",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              )),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, left: 8, right: 8, bottom: 8),
                    child: Container(
                      color: Colors.white30,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "images/our_moto.png",
                      height: 40,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 45, 8, 8),
                    child: Center(
                        child: Text(
                      "At Leaders School, we believe that our children are the future of our country. We therefore aspire to become the model school which promotes moral, physical, creative, emotional and academic excellence through a broad, balanced and relevant education —in an effective environment, By teaching our children to learn, to understand, to think and to adapt to our ever changing environment, By developing their abilities to their full potential, helping them to realize their dreams within the wider community, By providing them with the right tools to develop into mature adults, through our qualified human resources, our excellent environment and the democratic participation of the school’s parents and stakeholders.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.2, color: Colors.black45, fontSize: 20),
                    )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Teachers",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "See all",
                      style: TextStyle(
//                      fontSize: 22,
//                      fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(2, 2, 49, 0.9),
                      ),
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
                ],
              ),
              Container(
                height: 50.0,
                child: ListView.builder(
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: Teachers == null ? 0 : Teachers.length,
                  itemBuilder: (BuildContext context, int index) {
                    String img = Teachers[index];

                    return Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          img,
                        ),
                        radius: 25.0,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
