import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:web2/constants/style.dart';
import 'package:web2/widgets/custom_text.dart';

/// Example without datasource
class DetailClaim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 6),
                  color: lightGrey.withOpacity(.1),
                  blurRadius: 12),
            ],
            border: Border.all(color: lightGrey, width: .5)),
        padding: const EdgeInsets.all(16),
        child: Container(
          height: 100,
          child: CustomText(
            text: "test aja",
          ),
        ));
  }
}
