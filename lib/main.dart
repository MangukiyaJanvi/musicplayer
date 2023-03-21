import 'package:flutter/material.dart';
import 'package:musicplayer/screens/homescreen/premium_screen.dart';
import 'package:musicplayer/screens/homescreen/profile_screen.dart';
import 'package:musicplayer/screens/homescreen/provider/home_provider.dart';
import 'package:musicplayer/screens/homescreen/tab_screen.dart';
import 'package:musicplayer/screens/homescreen/view/home_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>TabScreen(),
          'home':(context) =>HomeScreen(),
          'profile':(context) =>ProfileScreen(),
          'premium':(context) =>PremiumScreen(),
        },
      ),
    ),
  );
}