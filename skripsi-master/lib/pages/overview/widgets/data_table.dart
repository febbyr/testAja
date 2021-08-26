import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:web2/constants/style.dart';
import 'package:web2/widgets/custom_text.dart';

/// Example without datasource
class HistoryClaim extends StatelessWidget {
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: "ClaimHistory",
                color: lightGrey,
                weight: FontWeight.bold,
              )
            ],
          ),
          DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: [
                DataColumn2(
                  label: Text('Name'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Tanggal Claim'),
                ),
                DataColumn(
                  label: Text('Jumlah Claim'),
                ),
                DataColumn(
                  label: Text('Status'),
                ),
              ],
              rows: List<DataRow>.generate(
                  7,
                  (index) => DataRow(cells: [
                        DataCell(CustomText(
                          text: "Budi",
                        )),
                        DataCell(CustomText(
                          text: "20210812",
                        )),
                        DataCell(CustomText(
                          text: "RP.150.000",
                        )),
                        DataCell(Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: active, width: .5),
                              color: light,
                              borderRadius: BorderRadius.circular(20)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          child: CustomText(
                            text: "Waiting Approval",
                            color: active.withOpacity(.7),
                            weight: FontWeight.bold,
                          ),
                        )),
                      ]))),
        ],
      ),
    );
  }
}
