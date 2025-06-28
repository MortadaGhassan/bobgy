import 'package:algad_almushriq/providers/onboarding_conter_provider.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utlis/widgets/onboarding_indicator.dart';
import '../utlis/widgets/onboarding_page.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final onboardingCounter = ref.watch(onboardingCounterProvider);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            reverse: true,
            controller: _pageController,
            onPageChanged: (val) {
              ref.read(onboardingCounterProvider.notifier).state = val;
            },
            children: [
              OnboardingPage(
                onboardingCounter: onboardingCounter,
                ref: ref,
                image:
                    'assets/images/1403223749f2922537c6b44743dc7f94f1635fb3.jpg',
                heading: 'مرحبًا بك في تطبيق مؤسسة الغد المشرق',
                content:
                    'ابدأ رحلتك في دعم الأيتام والفقراء. قم بالكفالة أو التبرع للمحتاجين مباشرة عبر التطبيق.',
                imageAlignment: Alignment(0, 0),
              ),
              OnboardingPage(
                onboardingCounter: onboardingCounter,
                ref: ref,
                image:
                    'assets/images/b0da9b2210aedcb63c8f132169786fd3208d8627.jpg',
                heading: 'كل خطوة تحدث فرقًا',
                content:
                    'من خلال التطبيق، يمكنك متابعة تقدم المساعدة التي تقدمها ومشاهدة التغيير الذي يحدث في حياة الأيتام والفقراء.',
                imageAlignment: Alignment(-0.2, 0),
              ),
              OnboardingPage(
                onboardingCounter: onboardingCounter,
                ref: ref,
                image:
                    'assets/images/608119b83aa5806a04d57c8a2124ae797575cac5.jpg',
                heading: 'معًا نصنع غدًا مشرقًا!',
                content:
                    'كل تبرع أو كفالة تُساهم في تحسين حياة المحتاجين، ونعمل معًا لتوفير الأمل والفرص للأيتام والفقراء في المجتمع.',
                imageAlignment: Alignment(-0.5, 0),
              ),
            ],
          ),
          SizedBox(height: 2.40.h),
          OnboardingIndicator(
            onboardingCounter: onboardingCounter,
            pageController: _pageController,
            ref: ref,
          ),
        ],
      ),
    );
  }
}
