import 'package:flutter/material.dart';
import 'package:tdo/shared/size.dart';

import 'package:tdo/shared/text_style/text_style.dart';

class OnBoardingItem extends StatelessWidget {
  final Image image;
  final String title;
  final String desc;
  const OnBoardingItem({
    required this.image,
    required this.title,
    required this.desc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: image),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: based.copyWith(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: Sizes(context).height * 0.02,
                  ),
                  Text(
                    desc,
                    style: based.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
