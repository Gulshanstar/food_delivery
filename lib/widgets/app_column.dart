import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
                children: List.generate(
                    5,
                    (index) => const Icon(
                          Icons.star,
                          color: Colors.blue,
                          size: 15,
                        ))),
            const SizedBox(width: 10),
            const SmallText(text: "4.8"),
            const SizedBox(width: 10),
            const SmallText(text: "2415"),
            const SizedBox(
              width: 10,
            ),
            const SmallText(text: "Comments")
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: Colors.green),
            IconAndTextWidget(
                icon: Icons.location_on, text: "1.8km", iconColor: Colors.blue),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "32min",
                iconColor: Colors.pink),
          ],
        )
      ],
    );
  }
}
