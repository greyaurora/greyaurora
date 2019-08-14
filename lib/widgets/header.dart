import 'dart:html';
import 'dart:js' as js;

import 'package:flutter_web/material.dart';

class Header extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 16),
        Text(
          'grey aurora',
          style: Theme.of(context).primaryTextTheme.display2,
        ),
        SizedBox(height: 16),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () => js.context.callMethod(
                'open',
                ['https://twitter.com/thatguy1280', '_blank'],
              ),
              child: Text(
                'twitter',
                style: Theme.of(context).primaryTextTheme.subhead,
              ),
            ),
            SizedBox(width: 16),
            InkWell(
              onTap: () => js.context.callMethod(
                'open',
                ['https://github.com/greyaurora', '_blank'],
              ),
              child: Text(
                'github',
                style: Theme.of(context).primaryTextTheme.subhead,
              ),
            ),
            SizedBox(width: 16),
            InkWell(
              onTap: () => js.context.callMethod(
                'open',
                [
                  'https://stackoverflow.com/users/11094679/greyaurora',
                  '_blank'
                ],
              ),
              child: Text(
                'stackoverflow',
                style: Theme.of(context).primaryTextTheme.subhead,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
