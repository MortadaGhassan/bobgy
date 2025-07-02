import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';

class DonationCard extends StatelessWidget {
  final String text;
  final String image;
  final GestureTapCallback onTap;
  const DonationCard({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 1.w, vertical: 0.5.h),
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
                    height: 11.h,
                    child: Transform.translate(
                      offset: Offset(0, 10),
                      child: Transform.scale(
                        scale: 1.25,
                        child: Image.asset(image, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 0.4.h),
                  height: 3.h,
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
