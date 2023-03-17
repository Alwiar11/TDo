import 'package:flutter/material.dart';
import 'package:tdo/shared/colors/colors.dart';
import 'package:tdo/shared/size.dart';
import 'package:tdo/shared/text_style/text_style.dart';

class LargeButton extends StatelessWidget {
  final String title;
  const LargeButton({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Sizes(context).width * 0.9,
          height: 60,
          decoration: BoxDecoration(
              color: pink, borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: based.copyWith(color: Colors.white, fontSize: 24),
              )
            ],
          ),
        ),
      ],
    );
  }
}
