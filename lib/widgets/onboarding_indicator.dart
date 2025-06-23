import 'package:algad_almushriq/providers/onboarding_provider.dart';
import 'package:algad_almushriq/router/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/onboarding_conter_provider.dart';

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
      left: 16,
      right: 16,
      bottom: 37,

      child: Row(
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
              separatorBuilder: (context, index) => SizedBox(width: 9),
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
                _pageController.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
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
                  minimumSize: const Size(41, 41),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(11),
                ),
                child: Icon(Icons.arrow_forward_rounded, size: 32),
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
                  minimumSize: const Size(105, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(11),
                ),
                child: Text(
                  'ابدا الان',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
        ],
      ),
    );
  }
}
