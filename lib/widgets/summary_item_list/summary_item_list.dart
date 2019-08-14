import 'package:flutter_web/material.dart';
import 'package:greyaurora/models/summary_item.dart';
import 'package:greyaurora/widgets/summary_item_list/summary_item_row/summary_item_row.dart';

/// Renders alternating even/odd items in a Summary List
class SummaryItemList extends StatelessWidget {
  final List<SummaryItem> items;

  SummaryItemList(this.items);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        for (SummaryItem item in items) ...[
          SummaryItemRow(item),
          SizedBox(height: 65),
        ],
      ],
    );
  }
}
