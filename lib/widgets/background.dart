import 'package:flutter_web/material.dart';

class Background extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColorLight,
          ],
          stops: [
            0.1,
            1.0,
          ],
        ),
      ),
    );
  }
}
