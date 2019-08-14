import 'package:flutter_web/material.dart';

import 'background.dart';
import 'header.dart';

class Screen extends StatelessWidget {
  final Widget child;

  Screen({Key key, this.child}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Background(),
            Column(
              children: <Widget>[
                Header(),
                Expanded(
                  child: ListView(
                    children: [
                      child,
                      Text('Built in Flutter'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
