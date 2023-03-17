import 'package:flutter/material.dart';
import 'package:tdo/shared/size.dart';
import 'package:tdo/shared/text_style/text_style.dart';

class CardTask extends StatelessWidget {
  final DecorationImage image;
  final Color color;
  final String title;
  final String desc;
  const CardTask({
    required this.image,
    required this.color,
    required this.title,
    required this.desc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes(context).width * 0.9,
      height: 130,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, image: image, color: color),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: based.copyWith(fontSize: 16),
                  ),
                  Text(
                    desc,
                    style: based.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.play_arrow_sharp,
              color: color,
              size: 45,
            ),
          )
        ],
      ),
    );
  }
}
