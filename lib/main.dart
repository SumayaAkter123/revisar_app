
import 'package:flutter/material.dart';
import 'package:revisar_app/Demo/MyRatingsScreen.dart';
import 'package:revisar_app/Demo/MyReviewScreen.dart';
import 'package:revisar_app/Demo/edit_userProfile.dart';
import 'package:revisar_app/Demo/onboarding1.dart';
import 'package:revisar_app/Demo/onboarding2.dart';
import 'package:revisar_app/Demo/onboarding3.dart';
import 'package:revisar_app/Demo/search.dart';
import 'package:revisar_app/Demo/user_signin.dart';


import 'Demo/MyFavouritesScreen.dart';
import 'Demo/PromocodeListScreen.dart';
import 'Demo/PromocodeScreen.dart';
import 'Demo/SplashScreen.dart';
import 'Demo/signUp.dart';
import 'Demo/user_forget_password.dart';
import 'Demo/user_profile.dart';



void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Revisar App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      //home: SplashScreen(),
      initialRoute: '/search',
      routes: {
        '/home':(context)=>SplashScreen(),
        '/onboarding1':(context)=>onboarding1(),
        '/onboarding2':(context)=>onboarding2(),
        '/onboarding3':(context)=>onboarding3(),
        '/signin':(context)=>user_signin(),
        '/signup':(context)=>signUp(),
        '/userProfile':(context)=>user_profile(),
        '/edit_userProfile':(context)=>edit_userProfile(),
        '/user_forget_password':(context)=>user_forget_password(),
        '/PromocodeScreen':(context)=>PromocodScreen(),
        '/PromocodeListScreen':(context)=>PromocodeListScreen(),
        '/MyReviewsScreen':(context)=>MyReviewsScreen(),
        '/MyRatingsScreen':(context)=>MyRatingsScreen(),
        '/MyFavouritesScreen':(context)=>MyFavouritesScreen(),
        '/search':(context)=>search(),
      },
    );
  }
}


