import 'package:algad_almushriq/theme/theme.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class MiniNewsCard extends StatelessWidget {
  const MiniNewsCard({
    super.key,
    required this.image,
    required this.title,
    required this.content,
    required this.type,
    required this.date,
  });
  final String image;
  final String title;
  final String content;
  final String type;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: Image.asset(image, fit: BoxFit.cover, height: 90, width: 90),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: context.colorScheme.primary,
                    fontSize: SizeConfig.font14,
                  ),
                ),
                Text(
                  content,
                  style: TextStyle(fontSize: SizeConfig.font14),
                  softWrap: true,
                ),
                SizedBox(height: 0.8.h),
                Row(
                  children: [
                    Text(
                      '$type ',
                      style: TextStyle(color: context.colorScheme.primary),
                    ),
                    Text('• $date', style: TextStyle(color: Color(0xffb5b6b9))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
