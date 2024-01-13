import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:wellnessz/views/Meals.dart';
import 'package:wellnessz/views/homepage.dart';
import 'package:wellnessz/views/retail.dart';
import 'package:wellnessz/views/stats.dart';

void main() => runApp(const MyApp());

///
class MyApp extends StatefulWidget {
  ///
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void changeTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List _pages =[
    HomePage(),
    Stats(),
    Meals(),
    retail()

  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato',
        primaryTextTheme: Typography(platform: TargetPlatform.iOS).white,
        textTheme: Typography(platform: TargetPlatform.iOS).white,


      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        extendBody: true,
        body: _pages[_selectedIndex],

        // extendBody: true,
        bottomNavigationBar: ResponsiveNavigationBar(
          backgroundOpacity: 1,
          backgroundColor:Colors.black ,
          outerPadding : const EdgeInsets.fromLTRB(16, 0, 16, 15),
          selectedIndex: _selectedIndex,
          onTabChange: changeTab,
          // showActiveButtonText: false,
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 13
          ),
          navigationBarButtons:  <NavigationBarButton>[
            NavigationBarButton(
              text: 'Home',

              icon: 'assets/bottom/Home.png',
              backgroundColor: Color.fromRGBO(103, 188, 42, 1),
            ),
            NavigationBarButton(
              text: 'Statistics',
              icon: 'assets/bottom/stats.png',
              backgroundColor: Color.fromRGBO(103, 188, 42, 1),
            ),
            NavigationBarButton(
              text: 'Meal',
              icon: 'assets/bottom/meal.png',
              backgroundColor: Color.fromRGBO(103, 188, 42, 1),
            ),
            NavigationBarButton(
              text: 'Retail',

              icon: 'assets/bottom/retail.png',
              backgroundColor: Color.fromRGBO(103, 188, 42, 1),
            ),
          ],
        ),
      ),
    );
  }
}
extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}