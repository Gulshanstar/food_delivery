import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final TextOverflow textOverflow;
  const BigText(
      {Key? key,
      this.color,
      required this.text,
      this.size = 0,
      this.textOverflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: textOverflow,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.normal,
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontFamily: "Roboto"),
    );
  }
}
