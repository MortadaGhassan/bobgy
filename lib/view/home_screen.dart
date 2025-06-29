import 'package:algad_almushriq/l10n/app_localizations.dart';
import 'package:algad_almushriq/providers/locale_provider.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:algad_almushriq/utlis/widgets/custome_cliped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

import '../router/route_names.dart';
import '../utlis/widgets/donation_card.dart';
import '../utlis/widgets/instant_donation_card.dart';
import '../utlis/widgets/news_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final local = ref.watch(localeNotifierProvider);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(
            bottom: 13.h,
            top: 4.h,
            right: 3.w,
            left: 3.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.userGreeting,
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
              onPressed: () {},
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // The three square image buttons
                      Row(
                        children: [
                          DonationCard(
                            image:
                                'assets/images/9f317d1244626535af22fa260b4f9486d6fa25de.jpg',
                            text: "كفالة يتيم",
                            onTap: () {
                              context.pushNamed(
                                RouteNames.orphanCustodyProgrammeScreen,
                              );
                            },
                          ),
                          DonationCard(
                            image:
                                'assets/images/ebba5e482cd4ef3e56901fb3a137874c437ff6aa.jpg',
                            text: "التبرع بالسلع",
                            onTap: () {},
                          ),
                          DonationCard(
                            image: 'assets/images/handGiveMoney.jpg',
                            text: "تبرع الان",
                            onTap: () {},
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
                              Directionality(
                                textDirection:
                                    local?.languageCode == 'ar'
                                        ? TextDirection.ltr
                                        : TextDirection.rtl,
                                child: Positioned(
                                  bottom: -16,
                                  top: 26,
                                  left: local == Locale('ar') ? 0 : null,
                                  right: local == Locale('en') ? 0 : null,
                                  child: Image.asset(
                                    'assets/images/e51a5d717ff0bbb907a19131bb6236cb985cde44.png',
                                    matchTextDirection: true,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 15,
                                right: 16,
                                left: 16,
                                child: Text(
                                  "ساهم الان",
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
                                left: 16,
                                child: Text(
                                  'ساهم الآن في تغيير حياة الأيتام!\nتبرعك يضمن لهم مأوى دافئًا، وحياة مليئة\n بالأمل. كل مساهمة تحدث فرقًا كبيرً كن\n سببًا في إسعادهم اليوم .',
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontSize: SizeConfig.font14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffbfd6e1),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 1.5.h,
                                right: local == Locale('ar') ? 4.5.w : null,
                                left: local == Locale('en') ? 4.5.w : null,
                                child:
                                    local?.languageCode == 'ar'
                                        ? CustomeClipedButton(
                                          onTap: () {},
                                          height: 3.9.h,
                                          width: 14.4.h,
                                          reversed: false,
                                        )
                                        : Transform(
                                          alignment: Alignment.center,
                                          transform:
                                              Matrix4.identity()
                                                ..scale(-1.0, 1.0),
                                          child: CustomeClipedButton(
                                            onTap: () {},
                                            height: 3.9.h,
                                            width: 14.4.h,
                                            reversed: true,
                                          ),
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
                            Text(
                              "الاخبار",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontSize: SizeConfig.font16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size.zero,
                                tapTargetSize:
                                    MaterialTapTargetSize
                                        .shrinkWrap, // Shrink touch area to content
                              ),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: SizedBox(
                          height: 30.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
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
