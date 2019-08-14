import 'package:flutter_web/material.dart';

import 'theme/theme.dart';
import 'screens/home_page/src.dart';

void main() => runApp(GreyAurora());

class GreyAurora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'greyaurora',
      theme: mainTheme,
      home: HomePage(),
    );
  }
}
