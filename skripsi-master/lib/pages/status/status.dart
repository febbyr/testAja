import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:web2/constants/controllers.dart';
import 'package:web2/helpers/responsive_layout.dart';
import 'package:web2/pages/status/widgets/create_form.dart';
import 'package:web2/widgets/custom_text.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [CreateForm()],
          ),
        )
      ],
    );
  }
}
