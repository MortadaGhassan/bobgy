import 'package:flutter/material.dart';

import '../size_config.dart';

class AdvantagesOfCutody extends StatelessWidget {
  final String content;
  const AdvantagesOfCutody({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 1.w,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        SizedBox(width: 2.w),
        Expanded(
          child: Text(
            content,
            softWrap: true,
            style: TextStyle(
              fontSize: SizeConfig.font14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
