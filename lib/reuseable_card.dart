import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color myColor;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({@required this.myColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: myColor,
        ),
      ),
    );
  }
}
