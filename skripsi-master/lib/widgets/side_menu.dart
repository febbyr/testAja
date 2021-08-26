import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web2/constants/controllers.dart';
import 'package:web2/constants/style.dart';
import 'package:web2/helpers/responsive_layout.dart';
import 'package:web2/pages/authentication/authentication.dart';
import 'package:web2/routing/routes.dart';
import 'package:web2/widgets/custom_text.dart';
import 'package:web2/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset(
                        "icons/logogbr.png",
                        width: 30,
                      ),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "SyClara",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(
                      width: _width / 48,
                    ),
                  ],
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItems
                  .map((item) => SideMenuItem(
                        itemName: item.name,
                        onTap: () {
                          if (item.route == AuthenticationViewPageRoute) {
                            Get.offAllNamed(AuthenticationViewPageRoute);
                            menuController
                                .changeActiveitemTo(OverViewPageDisplayName);
                          }
                          if (!menuController.isActive(item.name)) {
                            menuController.changeActiveitemTo(item.name);
                            if (ResponsiveWidget.isSmallScreen(context))
                              Get.back();
                            navigationController.navigateTo(item.route);
                          }
                        },
                      ))
                  .toList())
        ],
      ),
    );
  }
}
