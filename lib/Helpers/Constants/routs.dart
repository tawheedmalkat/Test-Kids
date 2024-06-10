

import 'package:get/get_navigation/src/routes/get_route.dart';


import '../../Modules/Main/Home-Screen.dart';
import '../../Modules/NavBar/nav-screen.dart';
import '../../Modules/SignIn/signIn-screen.dart';


class RoutsPage{
  static String homepage='/';
  static String signinscreen='/login';
  static String navBar='/navBar';

  static gethomepage()=>HomePage;
  static getsigninscreen()=>SignInScreen;
  static getNavBar()=>NavBar;

  static List<GetPage> routes=[
    GetPage(name: homepage, page: ()=>HomePage()),
    GetPage(name: signinscreen, page: ()=>SignInScreen()),
    GetPage(name: navBar, page: ()=>NavBar()),

  ];
}
