import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web2/constants/style.dart';
import 'package:web2/controller/menu_controller.dart';
import 'package:web2/controller/navigation_controller.dart';
import 'package:web2/layout.dart';
import 'package:web2/pages/404/error_page.dart';
import 'package:web2/pages/authentication/authentication.dart';
import 'package:web2/routing/routes.dart';

void main(List<String> args) {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      unknownRoute: GetPage(
          name: "/notfound",
          page: () => PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: RootRoute, page: () => SiteLayout()),
        GetPage(
            name: AuthenticationViewPageRoute,
            page: () => AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: "belajar lagi",
      theme: ThemeData(
          scaffoldBackgroundColor: light,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }),
          primaryColor: Colors.blue),
    );
  }
}
