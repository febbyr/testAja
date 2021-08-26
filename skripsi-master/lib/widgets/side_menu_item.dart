import 'package:flutter/material.dart';
import 'package:web2/helpers/responsive_layout.dart';
import 'package:web2/widgets/horizontal_menu_item.dart';
import 'package:web2/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({Key key, this.itemName, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context))
      return VerticalMenuitem(
        itemName: itemName,
        onTap: onTap,
      );
    return HorizontalMenuitem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
