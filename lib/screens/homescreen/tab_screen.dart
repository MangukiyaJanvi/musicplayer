import 'package:flutter/material.dart';
import 'package:musicplayer/screens/homescreen/premium_screen.dart';
import 'package:musicplayer/screens/homescreen/profile_screen.dart';
import 'package:musicplayer/screens/homescreen/provider/home_provider.dart';
import 'package:provider/provider.dart';

import 'view/home_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  List ScreenList = [
    HomeScreen(),
    ProfileScreen(),
    PremiumScreen()
  ];
  HomeProvider? hfalse;
  HomeProvider? htrue;

  @override
  Widget build(BuildContext context) {
    hfalse=Provider.of<HomeProvider>(context,listen: false);
    htrue=Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade900,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.white24,
          onTap: (value) {
            hfalse!.Add(value);
          },
          currentIndex: htrue!.tabindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: 'Me'),
            BottomNavigationBarItem(
                icon: Icon(Icons.workspace_premium), label: 'Pr'),
          ],
        ),
        body:ScreenList[htrue!.tabindex],
      ),
    );
  }
}
