import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

import '../utlis/widgets/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff2c759e), Color(0xff41a2d8)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Image.asset(
                'assets/images/Vector2.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        leadingWidth: 45.w,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: InkWell(
            onTap: () => context.pop(),
            borderRadius: BorderRadius.circular(15),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: Text(
                    "برنامج الكفالة",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return NotificationCard(
              icon: HugeIcons.strokeRoundedStarAward01,
              title: 'شكراً على كرمك',
              message:
                  'تم استلام تبرعك بقيمة [250,000] بنجاح. سيتم توجيه المبلغ لدعم حملة [بيت الحياة] , نحن ممتنون لمساهمتك',
              time: 5,
            );
          },
          separatorBuilder:
              (context, indext) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
                child: Divider(color: Color(0xffb5b6b9)),
              ),
          itemCount: 8,
        ),
      ),
    );
  }
}
