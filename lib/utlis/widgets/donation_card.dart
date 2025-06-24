import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';

class DonationCard extends StatelessWidget {
  final String text;
  final String image;
  const DonationCard({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      width: 29.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              child: Container(
                width: double.infinity,
                height: 13.h,
                child: Transform.translate(
                  offset: Offset(0, 10),
                  child: Transform.scale(
                    scale: 1.2,
                    child: Image.asset(image, fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 0.5.h),
              height: 4.5.h,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: SizeConfig.font16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
