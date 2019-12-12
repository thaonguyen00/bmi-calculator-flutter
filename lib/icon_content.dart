import 'package:flutter/cupertino.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  final String cardText;
  final IconData cardIcon;
  IconContent({@required this.cardText, @required this.cardIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(cardIcon, size: 80),
        SizedBox(
          height: 15,
        ),
        Text(
          cardText,
          style: kTextStyle,
        )
      ],
    );
  }
}
