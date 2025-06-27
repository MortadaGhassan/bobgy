import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:algad_almushriq/utlis/widgets/custome_cliped_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

import '../router/route_names.dart';
import '../utlis/widgets/donation_card.dart';
import '../utlis/widgets/instant_donation_card.dart';
import '../utlis/widgets/news_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(bottom: 13.h, top: 1.h, right: 4.w),
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'اهلا بك',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: SizeConfig.font18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'ازهر خضير',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: SizeConfig.font22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        leadingWidth: 20.w,
        leading: Padding(
          padding: EdgeInsets.only(bottom: 13.h, left: 6.w, top: 1.h),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              alignment: Alignment.center,
              elevation: 0,
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
        backgroundColor: Colors.transparent,
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
            top: 12.5.h,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              height: 85.h,
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 3.49.w, right: 3.49.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // The three square image buttons
                      Row(
                        children: [
                          DonationCard(
                            image: 'assets/images/handGiveMoney.jpg',
                            text: "تبرع الان",
                            onTap: () {},
                          ),
                          DonationCard(
                            image:
                                'assets/images/ebba5e482cd4ef3e56901fb3a137874c437ff6aa.jpg',
                            text: "التبرع بالسلع",
                            onTap: () {},
                          ),
                          DonationCard(
                            image:
                                'assets/images/9f317d1244626535af22fa260b4f9486d6fa25de.jpg',
                            text: "كفالة يتيم",
                            onTap: () {
                              context.goNamed(
                                RouteNames.orphanCustodyProgrammeScreen,
                              );
                            },
                          ),
                        ],
                      ),
                      //Advertisement widget
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Container(
                          margin: EdgeInsets.all(4),
                          width: 91.6.w,
                          height: 22.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('assets/images/Vector2.png'),
                              fit: BoxFit.cover,
                            ),
                            gradient: LinearGradient(
                              colors: [Color(0xff104352), Color(0xff41a2d8)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                bottom: -16,
                                top: 26,
                                child: Image.asset(
                                  'assets/images/e51a5d717ff0bbb907a19131bb6236cb985cde44.png',
                                ),
                              ),
                              Positioned(
                                top: 15,
                                right: 16,
                                child: Text(
                                  "ساهم الان",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: SizeConfig.font18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 6.1.h,
                                right: 16,
                                child: Text(
                                  'ساهم الآن في تغيير حياة الأيتام!\nتبرعك يضمن لهم مأوى دافئًا، وحياة مليئة\n بالأمل. كل مساهمة تحدث فرقًا كبيرً كن\n سببًا في إسعادهم اليوم .',
                                  textDirection: TextDirection.rtl,
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontSize: SizeConfig.font14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffbfd6e1),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 11,
                                right: 16,
                                child: CustomeClipedButton(
                                  onTap: () {},
                                  height: 3.9.h,
                                  width: 14.4.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Immediate donation
                      Padding(
                        padding: EdgeInsets.only(right: 5, top: 12, bottom: 6),
                        child: Text(
                          'التبرع الفوري',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: SizeConfig.font16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: SizedBox(
                          height: 42.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            reverse: true,
                            separatorBuilder:
                                (context, index) => SizedBox(width: 8),
                            itemCount: 4,
                            itemBuilder:
                                ((context, index) => InstantDonationCard()),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5, top: 12, bottom: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "عرض المرزيد",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: SizeConfig.font12,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                            Text(
                              "الاخبار",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontSize: SizeConfig.font16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: SizedBox(
                          height: 30.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            reverse: true,
                            separatorBuilder:
                                (context, index) => SizedBox(width: 8),
                            itemCount: 4,
                            itemBuilder: ((context, index) => NewsCard()),
                          ),
                        ),
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
