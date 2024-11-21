
import 'package:flutter/material.dart';
import 'package:revisar_app/Demo/PromocodeScreen.dart';
import 'package:revisar_app/Demo/search.dart';
import 'Demo/MyFavouritesScreen.dart';
import 'Demo/MyRatingsScreen.dart';
import 'Demo/MyReviewScreen.dart';
import 'Demo/PromocodeListScreen.dart';
import 'Demo/SignInDone.dart';
import 'Demo/SplashScreen.dart';
import 'Demo/edit_userProfile.dart';
import 'Demo/onboarding1.dart';
import 'Demo/onboarding2.dart';
import 'Demo/onboarding3.dart';
import 'Demo/signUp.dart';
import 'Demo/user_forget_password.dart';
import 'Demo/user_profile.dart';
import 'Demo/user_signin.dart';



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
      home: SplashScreen(),
    /*initialRoute: '/PromocodeListScreen',
    routes: {
      //'/home': (context) => HomePage(),
      '/SplashScreen': (context) => SplashScreen(),
      '/signUp': (context) => signUp(),
      '/user_signin': (context) => user_signin(),
      '/onboarding1': (context) => onboarding1(),
      '/onboarding2': (context) => onboarding2(),
      '/onboarding3': (context) => onboarding3(),
      '/user_profile': (context) => user_profile(),
      '/user_forget_password': (context) => user_forget_password(),
      '/edit_userProfile': (context) => edit_userProfile(),
      '/MyFavouritesScreen': (context) => MyFavouritesScreen(),
      '/MyRatingsScreen': (context) => MyRatingsScreen(),
      '/MyReviewsScreen': (context) => MyReviewsScreen(),
      '/PromocodScreen': (context) => promocodeScreen(),
      '/PromocodeListScreen': (context) => PromocodeListScreen(),
      '/search': (context) => search(),
      '/SignInDone': (context) => SignInDone(),

    }*/
    );

  }
}


