import 'package:flutter_web/material.dart';

import 'package:greyaurora/models/summary_item.dart';
import 'package:greyaurora/widgets/screen.dart';
import 'package:greyaurora/widgets/summary_item_list/summary_item_list.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 80),
          FutureBuilder<String>(
            future: DefaultAssetBundle.of(context)
                .loadString('data/summary_items.json'),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return Container();
              }

              return SummaryItemList(SummaryItem.listJson(snapshot.data));
            },
          ),
        ],
      ),
    );
  }
}
