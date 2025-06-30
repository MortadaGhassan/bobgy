import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../router/route_names.dart';

class NewsCard extends ConsumerWidget {
  const NewsCard({
    super.key,
    required this.date,
    required this.title,
    required this.content,
  });
  final String date;
  final String title;
  final String content;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        context.pushNamed(RouteNames.topicNewsScreen);
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Stack(
          children: [
            Container(
              width: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/38797eb789f0413ed36067c8fa7d88d1f92ee5be.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Color(0xff41a2d8), Color(0x004E74B5)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 2.h,
              right: 3.w,
              left: 3.w,
              child: Text(
                'Jan 3,2024',
                style: TextStyle(
                  fontSize: SizeConfig.font12,
                  fontWeight: FontWeight.w800,
                  color: context.colorScheme.onPrimary,
                ),
              ),
            ),
            Positioned(
              bottom: 9.h,
              right: 3.w,
              left: 3.w,
              child: Text(
                'نجاح حملة التبرعات الشتوية:',
                style: TextStyle(
                  fontSize: SizeConfig.font14,
                  fontWeight: FontWeight.w800,
                  color: context.colorScheme.onPrimary,
                ),
              ),
            ),
            Positioned(
              bottom: 2.h,
              right: 3.w,
              left: 3.w,
              child: Text(
                'تمكنا من جمع أكثر من 10,000 دولار في حملة التبرعات  لتوفير الملابس والبطانيات للأيتام والعائلات المحتاجة.',
                style: TextStyle(
                  fontSize: SizeConfig.font14,
                  fontWeight: FontWeight.w500,
                  color: context.colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
