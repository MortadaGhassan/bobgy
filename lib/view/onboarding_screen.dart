import 'package:algad_almushriq/providers/onboarding_conter_provider.dart';
import 'package:algad_almushriq/providers/onboarding_provider.dart';
import 'package:algad_almushriq/router/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final onboardingCounter = ref.watch(onboardingCounterProvider);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: backgroundImage[onboardingCounter],
            ),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 37),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xB54E74B5), // 71% opacity blue
                    Color(0x544E74B5), // 33% opacity blue
                    Color(0x004E74B5),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  onboardingText[onboardingCounter],
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 20,
                        child: ListView.separated(
                          itemBuilder:
                              (context, index) => Container(
                                height: 9,
                                width: 9,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        index == onboardingCounter
                                            ? Color(0xff41A2D8)
                                            : Colors.white,
                                    width: 2,
                                  ),
                                ),
                              ),
                          separatorBuilder:
                              (context, index) => SizedBox(width: 9),
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                        ),
                      ),
                      Spacer(),
                      if (onboardingCounter != 0) ...[
                        IconButton(
                          onPressed: () {
                            ref
                                .read(onboardingCounterProvider.notifier)
                                .state--;
                          },
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 32),
                      ],
                      onboardingCounter != 2
                          ? OutlinedButton(
                            onPressed: () {
                              ref
                                  .read(onboardingCounterProvider.notifier)
                                  .state++;
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.white),
                              foregroundColor: Color(0xff41A2D8),
                              backgroundColor: Color(0x20FFFFFF),
                              alignment: Alignment.center,
                              minimumSize: const Size(41, 41),
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(11),
                            ),
                            child: Icon(Icons.arrow_forward_rounded, size: 32),
                          )
                          : OutlinedButton(
                            onPressed: () {
                              ref
                                  .read(onboardingCounterProvider.notifier)
                                  .state++;
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.white),
                              foregroundColor: Color(0xff41A2D8),
                              backgroundColor: Color(0x20FFFFFF),
                              alignment: Alignment.center,
                              minimumSize: const Size(105, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: EdgeInsets.all(11),
                            ),
                            child: Text(
                              'ابدا الان',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
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
    );
  }
}

List<Column> onboardingText = [
  Column(
    children: [
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          'مرحبًا بك في تطبيق مؤسسة الغد المشرق',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          'ابدأ رحلتك في دعم الأيتام والفقراء. قم بالكفالة أو التبرع للمحتاجين مباشرة عبر التطبيق.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    ],
  ),
  Column(
    children: [
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          'كل خطوة تحدث فرقًا',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          'من خلال التطبيق، يمكنك متابعة تقدم المساعدة التي تقدمها ومشاهدة التغيير الذي يحدث في حياة الأيتام والفقراء.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    ],
  ),
  Column(
    children: [
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          'معًا نصنع غدًا مشرقًا!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          'كل تبرع أو كفالة تُساهم في تحسين حياة المحتاجين، ونعمل معًا لتوفير الأمل والفرص للأيتام والفقراء في المجتمع.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    ],
  ),
];
List<DecorationImage> backgroundImage = [
  DecorationImage(
    image: AssetImage(
      'assets/images/1403223749f2922537c6b44743dc7f94f1635fb3.jpg',
    ),

    fit: BoxFit.cover,
    alignment: Alignment(0, 0),
  ),
  DecorationImage(
    image: AssetImage(
      'assets/images/b0da9b2210aedcb63c8f132169786fd3208d8627.jpg',
    ),
    fit: BoxFit.cover,
    alignment: Alignment(-0.2, 0),
  ),
  DecorationImage(
    image: AssetImage(
      'assets/images/608119b83aa5806a04d57c8a2124ae797575cac5.jpg',
    ),
    fit: BoxFit.cover,
    alignment: Alignment(-0.5, 0),
  ),
];
