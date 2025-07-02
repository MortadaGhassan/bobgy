import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';

class CustodyNumbersCard extends StatelessWidget {
  const CustodyNumbersCard({super.key, required this.num, required this.state});

  final int num;
  final String state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.h,
      width: 28.8.w,
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(15),
        border: BoxBorder.all(color: context.colorScheme.onPrimary),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$num',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: SizeConfig.font20,
            ),
          ),
          Text(
            state,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
