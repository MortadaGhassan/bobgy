import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../router/route_names.dart';
import '../../utlis/widgets/mini_news_card.dart';
import '../../utlis/widgets/news_card.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Padding(
          padding: EdgeInsets.only(
            bottom: 13.h,
            top: 4.h,
            right: 3.w,
            left: 3.w,
          ),
          child: Text('الاخبار', style: Theme.of(context).textTheme.titleLarge),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 10.h,
              top: 2.h,
              left: 5.w,
              right: 5.w,
            ),
            child: ElevatedButton(
              onPressed: () {
                context.pushNamed(RouteNames.notificationScreen);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(11),
                elevation: 0,
                minimumSize: Size(13.w, 13.w),
                maximumSize: Size(13.w, 13.w),
                backgroundColor: Color(0x4DFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedNotification02,
                color: Colors.white,
              ),
            ),
          ),
        ],
        elevation: 0,
        toolbarHeight: 20.h,
      ),
      body: Stack(
        children: [
          //AppBar Vector;
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 30.h,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Color(0xff41a2d8)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Image.asset(
                'assets/images/Vector2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main white Container
          Positioned(
            top: 15.h,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 40, left: 4.w, right: 4.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'اخبار اليوم',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 16),
                        child: SizedBox(
                          height: 30.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder:
                                (context, index) => SizedBox(width: 8),
                            itemCount: 4,
                            itemBuilder:
                                ((context, index) => NewsCard(
                                  date: 'Jan 3,2024',
                                  title: 'نجاح حملة التبرعات الشتوية:',
                                  content:
                                      'تمكنا من جمع أكثر من 10,000 دولار في حملة التبرعات  لتوفير الملابس والبطانيات للأيتام والعائلات المحتاجة.',
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5, top: 12, bottom: 16),
                        child: Text(
                          "الاخبار",
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return MiniNewsCard(
                            image:
                                'assets/images/0071d44a017227789e70c4a7cd6d2ff6c8e23be1.jpg',
                            title: 'قصص نجاح',
                            content:
                                'أحد الأيتام حصل على منحة دراسية لدراسة الطب بفضل دعم المؤسسة.',
                            type: 'دراسة',
                            date: '21 Mar 2024',
                          );
                        },
                        separatorBuilder:
                            (context, indext) => SizedBox(height: 16),
                        itemCount: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
