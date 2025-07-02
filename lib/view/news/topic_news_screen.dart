import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../router/route_names.dart';

class TopicNewsScreen extends StatelessWidget {
  const TopicNewsScreen({super.key});

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
                    "الاخبار",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          //AppBar Vector;
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 35.h,
            child: Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/1f6cb5946a0fef066b640e9d994dfc9bf7e2626a.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main white Container
          Positioned(
            top: 28.h,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 3.49.w, right: 3.49.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 0.5.h, right: 1.w, left: 1.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'نجاح حملة المنح الطلابيه:',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: context.colorScheme.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'يسر مؤسسة الغد المشرق أن تعلن عن نجاح حملتها السنوية لتوفير المنح الدراسية للأيتام والطلاب المحتاجين، حيث تمكنا من تقديم الدعم التعليمي لـ 50 طالبًا وطالبة من مختلف الفئات الاجتماعية في بغداد.',
                        softWrap: true,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'يسر مؤسسة الغد المشرق أن تعلن عن نجاح حملتها السنوية لتوفير المنح الدراسية للأيتام والطلاب المحتاجين، حيث تمكنا من تقديم الدعم التعليمي لـ 50 طالبًا وطالبة من مختلف الفئات الاجتماعية في بغداد.',
                        softWrap: true,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'يسر مؤسسة الغد المشرق أن تعلن عن نجاح حملتها السنوية لتوفير المنح الدراسية للأيتام والطلاب المحتاجين، حيث تمكنا من تقديم الدعم التعليمي لـ 50 طالبًا وطالبة من مختلف الفئات الاجتماعية في بغداد.',
                        softWrap: true,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'يسر مؤسسة الغد المشرق أن تعلن عن نجاح حملتها السنوية لتوفير المنح الدراسية للأيتام والطلاب المحتاجين، حيث تمكنا من تقديم الدعم التعليمي لـ 50 طالبًا وطالبة من مختلف الفئات الاجتماعية في بغداد.',
                        softWrap: true,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'يسر مؤسسة الغد المشرق أن تعلن عن نجاح حملتها السنوية لتوفير المنح الدراسية للأيتام والطلاب المحتاجين، حيث تمكنا من تقديم الدعم التعليمي لـ 50 طالبًا وطالبة من مختلف الفئات الاجتماعية في بغداد.',
                        softWrap: true,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'يسر مؤسسة الغد المشرق أن تعلن عن نجاح حملتها السنوية لتوفير المنح الدراسية للأيتام والطلاب المحتاجين، حيث تمكنا من تقديم الدعم التعليمي لـ 50 طالبًا وطالبة من مختلف الفئات الاجتماعية في بغداد.',
                        softWrap: true,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'يسر مؤسسة الغد المشرق أن تعلن عن نجاح حملتها السنوية لتوفير المنح الدراسية للأيتام والطلاب المحتاجين، حيث تمكنا من تقديم الدعم التعليمي لـ 50 طالبًا وطالبة من مختلف الفئات الاجتماعية في بغداد.',
                        softWrap: true,
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
