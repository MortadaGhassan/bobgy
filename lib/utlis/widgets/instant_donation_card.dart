import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class InstantDonationCard extends StatelessWidget {
  const InstantDonationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              child: Container(
                width: double.infinity,
                height: 15.5.h,
                child: Transform.translate(
                  offset: Offset(0, 10),
                  child: Transform.scale(
                    scale: 1.2,
                    child: Image.asset(
                      'assets/images/bdfff867efb20241ec33a73c48d3b3025ee1f714.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 15.5.h,
              padding: EdgeInsets.only(top: 0.5.h),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Color(0xff130558),
                          size: 3.5.w,
                        ),
                        SizedBox(width: 2),
                        Text(
                          'Bantubarengan',
                          style: TextStyle(
                            color: Color(0xff666D80),
                            fontSize: SizeConfig.font12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'سداد ايجار مسكن ايتام',
                      style: TextStyle(
                        fontSize: SizeConfig.font14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'المبلغ المستهدف',
                          style: TextStyle(
                            fontSize: SizeConfig.font10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 3.h),
                        Text(
                          'المبلغ المستهدف',
                          style: TextStyle(
                            fontSize: SizeConfig.font10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '92%',
                          style: TextStyle(
                            fontSize: SizeConfig.font10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 8.9.h),
                        Text(
                          '450,000 دع',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: SizeConfig.font10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 7.h),
                        Text(
                          '50,000 دع',
                          style: TextStyle(
                            fontSize: SizeConfig.font10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    LinearPercentIndicator(
                      percent: 0.6,
                      progressColor: Theme.of(context).colorScheme.primary,
                      backgroundColor: Color(0xffededed),
                      barRadius: Radius.circular(15),
                      lineHeight: 1.h,
                      width: 63.5.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
