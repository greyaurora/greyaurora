import 'package:flutter_web/material.dart';
import 'package:greyaurora/models/summary_item.dart';
import 'package:greyaurora/theme/ga_colors.dart';

/// Displays an Image, Title and Description.
/// Even rows display the Image on the left, odd rows on the right.
///
/// todo: test rendering on different zoom levels/text sizes
class SummaryItemRow extends StatelessWidget {
  final SummaryItem item;
  static TextDirection _dir = TextDirection.rtl;

  SummaryItemRow(this.item);

  void flip() {
    _dir = _dir == TextDirection.rtl ? TextDirection.ltr : TextDirection.rtl;
  }

  bool get left => _dir == TextDirection.ltr;

  @override
  Widget build(BuildContext context) {
    flip();

    return SizedBox(
      height: 320,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: GAColors.paleLavender.withOpacity(0.4),
              // gradient: LinearGradient(
              //   begin: _dir == TextDirection.ltr
              //       ? Alignment.centerLeft
              //       : Alignment.centerRight,
              //   end: _dir == TextDirection.ltr
              //       ? Alignment.centerRight
              //       : Alignment.centerLeft,
              //   stops: [0.6, 0.7],
              //   colors: [
              //     GAColors.paleLavender.withOpacity(0.28),
              //     GAColors.paleLavender.withOpacity(0.6),
              //   ],
              // ),
            ),
          ),
          Row(
            textDirection: _dir,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: left
                            ? const EdgeInsets.only(right: 24)
                            : const EdgeInsets.only(left: 24),
                        child: Text(
                          item.title,
                          style: Theme.of(context)
                              .textTheme
                              .display1
                              .copyWith(fontWeight: FontWeight.bold),
                          textAlign: left ? TextAlign.right : TextAlign.left,
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: left
                            ? const EdgeInsets.only(right: 24)
                            : const EdgeInsets.only(left: 24),
                        child: Text(
                          item.description,
                          style: Theme.of(context)
                              .textTheme
                              .headline
                              .copyWith(fontWeight: FontWeight.w300),
                          textAlign: left ? TextAlign.right : TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: ClipRRect(
                    borderRadius: left
                        ? BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          )
                        : BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
