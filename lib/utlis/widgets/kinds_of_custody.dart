import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';

class KindsOfCustody extends StatelessWidget {
  final int number;
  final String title;
  final String content;
  const KindsOfCustody({
    super.key,
    required this.number,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 4.w,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: Text('$number', style: TextStyle()),
        ),
        SizedBox(width: 2.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title:',
                style: TextStyle(
                  fontSize: SizeConfig.font16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                content,
                softWrap: true,
                style: TextStyle(
                  fontSize: SizeConfig.font14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
