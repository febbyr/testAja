import 'package:flutter/material.dart';
import 'package:web2/pages/overview/widgets/info_card.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Claim Waiting Approval",
              value: "5",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Claim Approved",
              value: "30",
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: 16,
            ),
            InfoCard(
              title: "Cancelled Claim",
              value: "1",
              onTap: () {},
              topColor: Colors.redAccent,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "On Going Reimbursement",
              value: "6",
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
