import 'package:algad_almushriq/providers/onboarding_provider.dart';
import 'package:algad_almushriq/router/route_names.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({
    super.key,
    required this.onboardingCounter,
    required PageController pageController,
    required this.ref,
  }) : _pageController = pageController;

  final int onboardingCounter;
  final PageController _pageController;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 18,
      right: 18,
      bottom: 37,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          onboardingCounter != 2
              ? OutlinedButton(
                onPressed: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white),
                  foregroundColor: Color(0xff41A2D8),
                  backgroundColor: Color(0x20FFFFFF),
                  alignment: Alignment.center,
                  minimumSize: Size(5.w, 5.h),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(11),
                ),
                child: Icon(Icons.arrow_back_rounded, size: 8.33.w),
              )
              : OutlinedButton(
                onPressed: () {
                  ref
                      .read(onboardingNotifierProvider.notifier)
                      .completeOnboarding();
                  context.goNamed(RouteNames.logInScreen);
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white),
                  foregroundColor: Color(0xff41A2D8),
                  backgroundColor: Color(0x20FFFFFF),
                  alignment: Alignment.center,
                  minimumSize: Size(27.34.w, 4.81.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(11),
                ),
                child: Text(
                  'ابدا الان',
                  style: TextStyle(
                    fontSize: SizeConfig.font15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
          SizedBox(width: 8.33.w),
          if (onboardingCounter != 0) ...[
            IconButton(
              onPressed: () {
                _pageController.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              icon: Icon(
                Icons.arrow_forward_rounded,
                size: 8.33.w,
                color: Colors.white,
              ),
            ),
          ],
          Spacer(),
          SizedBox(
            height: 2.4.h,
            child: ListView.separated(
              itemBuilder:
                  (context, index) => Container(
                    width: 1.2.h,
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
              separatorBuilder: (context, index) => SizedBox(width: 9),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              reverse: true,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
