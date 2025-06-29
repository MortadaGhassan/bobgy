import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utlis/size_config.dart';
import '../utlis/widgets/advantages_of_cutody.dart';
import '../utlis/widgets/kinds_of_custody.dart';

class OrphanCustodyProgrammeScreen extends StatelessWidget {
  const OrphanCustodyProgrammeScreen({super.key});

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
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: SizeConfig.font18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 30.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/74cca0dcff25227fd27067f8f0d7cf115d589955.jpg',
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Color(0x5E41A2D8),
                        BlendMode.lighten,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 30.w,
                  bottom: 3.5.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      minimumSize: Size(40.w, 5.h),
                      maximumSize: Size(40.w, 5.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'ابدا الان',
                      style: TextStyle(fontSize: SizeConfig.font18),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 1.9.h, left: 2.w, right: 2.w),
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              height: 6.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
                border: Border(
                  top: BorderSide(color: Colors.white, width: 0.5.w),
                  left: BorderSide(color: Colors.white, width: 0.5.w),
                  right: BorderSide(color: Colors.white, width: 0.5.w),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 1.5.w,
                  vertical: 1.5.h,
                ),
                child: Text(
                  'انواع الكفالة',
                  style: TextStyle(
                    fontSize: SizeConfig.font16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 2.w, right: 2.w),
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
              width: 90.w,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                border: Border.all(color: Colors.white, width: 0.5.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KindsOfCustody(
                    number: 1,
                    title: " كفالة يتيم",
                    content:
                        'دعم يتيم واحد لتلبية احتياجاته الشهرية من طعام، ملبس، وتعليم.',
                  ),
                  SizedBox(height: 2.h),
                  KindsOfCustody(
                    number: 2,
                    title: 'كفالة أسرة فقيرة',
                    content:
                        'تقديم الدعم لأسر فقيرة لتوفير احتياجاتها اليومية.',
                  ),
                  SizedBox(height: 2.h),
                  KindsOfCustody(
                    number: 3,
                    title: 'كفالة تعليمية',
                    content:
                        'دعم الأطفال الأيتام للحصول على تعليم مجاني لضمان مستقبل أفضل.',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.9.h, left: 2.w, right: 2.w),
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              height: 6.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
                border: Border(
                  top: BorderSide(color: Colors.white, width: 0.5.w),
                  left: BorderSide(color: Colors.white, width: 0.5.w),
                  right: BorderSide(color: Colors.white, width: 0.5.w),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 1.5.w,
                  vertical: 1.5.h,
                ),
                child: Text(
                  'مزايا الكفالة',
                  style: TextStyle(
                    fontSize: SizeConfig.font16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 2.w, right: 2.w, bottom: 4.h),
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
              width: 90.w,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                border: Border.all(color: Colors.white, width: 0.5.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AdvantagesOfCutody(
                    content:
                        'أثر اجتماعي إيجابي: تساهم الكفالة في تحسين حياة الأيتام والأسر الفقيرة بتلبية احتياجاتهم.',
                  ),
                  SizedBox(height: 2.h),
                  AdvantagesOfCutody(
                    content:
                        'مساهمة مستدامة: توفر الكفالة دعمًا طويل الأمد، مما يعزز التأثير المستمر على حياة المستفيدين.',
                  ),
                  SizedBox(height: 2.h),
                  AdvantagesOfCutody(
                    content:
                        'شفافية تقارير: توفر تقارير دورية للمكفلين عن كيفية استخدام تبرعاتهم وأثرها على الأيتام والأسر.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
