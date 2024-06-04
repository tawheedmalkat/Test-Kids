

import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../Modules/Main-Page/Home-Screen.dart';
import '../../Modules/SignIn/signIn-screen.dart';


class RoutsPage{
  static String homepage='/';
  static String signinscreen='/login';

  static gethomepage()=>HomePage;
  static getsigninscreen()=>SignInScreen;

  static List<GetPage> routes=[
    GetPage(name: homepage, page: ()=>HomePage()),
    GetPage(name: signinscreen, page: ()=>SignInScreen()),

  ];
}
