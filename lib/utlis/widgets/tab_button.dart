import 'package:algad_almushriq/providers/locale_provider.dart';
import 'package:algad_almushriq/theme/theme.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabButton extends ConsumerStatefulWidget {
  const TabButton({super.key});

  @override
  ConsumerState<TabButton> createState() => _TabButtonState();
}

class _TabButtonState extends ConsumerState<TabButton> {
  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(localeNotifierProvider);

    bool firstSwitchValue = locale?.languageCode == 'en';

    return AnimatedToggleSwitch<bool>.size(
      current: firstSwitchValue,
      values: const [true, false],
      iconOpacity: 0.2,
      indicatorSize: Size(70, 30),
      customIconBuilder:
          (context, local, global) => Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              local.value ? 'English' : "عربي",

              style: TextStyle(
                color: Color.lerp(
                  Color(0xff292323),
                  context.colorScheme.onPrimary,
                  local.animationValue,
                ),
              ),
            ),
          ),
      borderWidth: 5.0,
      iconAnimationType: AnimationType.onHover,
      style: ToggleStyle(
        indicatorColor: context.colorScheme.primary,
        borderColor: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      selectedIconScale: 1.0,
      onChanged:
          (value) => setState(() {
            firstSwitchValue = value;
            if (locale == Locale('en')) {
              ref.read(localeNotifierProvider.notifier).setLocale(Locale('ar'));
            } else {
              ref.read(localeNotifierProvider.notifier).setLocale(Locale('en'));
            }
          }),
    );
  }
}
