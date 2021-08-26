import 'package:flutter/material.dart';
import 'package:web2/helpers/local_navigator.dart';
import 'package:web2/helpers/responsive_layout.dart';
import 'package:web2/widgets/large_screen.dart';
import 'package:web2/widgets/side_menu.dart';
import 'package:web2/widgets/small_Screen.dart';
import 'package:web2/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(
          child: SideMenu(),
        ),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          ),
        ));
  }
}
