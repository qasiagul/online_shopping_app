
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:online_shopping_app/screens/card_screen.dart';

import 'home_screen.dart';
  class Screens extends StatefulWidget {
    const Screens({Key? key}) : super(key: key);
  
    @override
    State<Screens> createState() => _ScreensState();
  }
  
  class _ScreensState extends State<Screens> {
    int selectedIndex = 0;
    static List <Widget> WidgetOptions = <Widget> [
      HomeScreen(),
      CardScreen(),
      Container(),
      Container(),
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: WidgetOptions.elementAt(selectedIndex),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.1),
              ),
            ]
          ),
          child: SafeArea(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                   child: GNav(
                     rippleColor: Colors.grey[300]!,
                     hoverColor: Colors.grey[100]!,
                       gap: 8,
                       activeColor: Colors.white,
                       iconSize: 24,
                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                       duration: Duration(microseconds: 400),
                       tabBackgroundColor: Colors.redAccent,
                       color: Colors.black,
                       tabs:[
                         GButton(icon: LineIcons.home, text: "Home",),
                         GButton(icon: LineIcons.shoppingBag, text: "Cart",),
                         GButton(icon: LineIcons.heart, text: "Wishlist",),
                         GButton(icon: LineIcons.user, text: "Account",),
                       ] ,
                   selectedIndex: selectedIndex,
                     onTabChange: (index){
                         setState(() {
                           selectedIndex = index;
                         });
                     },
                   ),
              ) ),
        ),

      );
    }
  }
  