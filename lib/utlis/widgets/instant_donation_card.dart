import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class InstantDonationCard extends StatelessWidget {
  InstantDonationCard({super.key});

  final TextEditingController _donatedAmoutController = TextEditingController();

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
                height: 21.h,
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
              height: 21.h,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Bantubarengan',
                          style: Theme.of(
                            context,
                          ).textTheme.labelMedium!.copyWith(
                            color: Color(0xff666D80),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 2),
                        Icon(
                          Icons.check_circle,
                          color: Color(0xff130558),
                          size: 3.w,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'المبلغ المتبقي',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(width: 3.h),
                        Text(
                          'المبلغ المستهدف',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 1.2.w),

                        Text(
                          '50,000 دع',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(width: 7.h),
                        Text(
                          '450,000 دع',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Spacer(),
                        Text(
                          '92%',
                          style: Theme.of(context).textTheme.bodySmall,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 5.5.h,
                          width: 40.w,
                          child: TextField(
                            textDirection: TextDirection.rtl,
                            controller: _donatedAmoutController,
                            keyboardType: TextInputType.numberWithOptions(),
                            style: TextStyle(),
                            decoration: InputDecoration(
                              hintText: 'ادخل المبلغ د,ع',
                              hintStyle: Theme.of(context).textTheme.labelSmall!
                                  .copyWith(fontSize: SizeConfig.font14),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            elevation: 0,
                            maximumSize: Size(20.w, 5.h),
                            minimumSize: Size(20.w, 5.h),
                          ),
                          child: Text(
                            'ادفع الان',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ],
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
