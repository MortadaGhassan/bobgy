import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.onboardingCounter,
    required this.ref,
    required this.image,
    required this.heading,
    required this.content,
    required this.alignment,
  });

  final int onboardingCounter;
  final WidgetRef ref;
  final String image;
  final String heading;
  final String content;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),

          fit: BoxFit.cover,
          alignment: alignment,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xB54E74B5), Color(0x544E74B5), Color(0x004E74B5)],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 109),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  heading,
                  style: Theme.of(context).textTheme.labelLarge,
                  textDirection: TextDirection.rtl,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  content,
                  style: TextStyle(
                    fontSize: SizeConfig.font20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
