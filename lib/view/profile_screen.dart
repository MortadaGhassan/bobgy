import 'package:algad_almushriq/providers/locale_provider.dart';
import 'package:algad_almushriq/router/route_names.dart';
import 'package:algad_almushriq/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:algad_almushriq/utlis/widgets/option_card.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  bool isEnglish = true;
  bool isNotification = true;

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(localeNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/appBar.png', fit: BoxFit.cover),
            Container(color: Colors.black.withValues(alpha: 0.3)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  side: BorderSide(color: context.colorScheme.surface),
                ),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        child: HugeIcon(
                          icon: HugeIcons.strokeRoundedUser02,
                          color: context.colorScheme.surface,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'مرتضى غسان',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '07700000000',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 120),
                      HugeIcon(
                        icon: HugeIcons.strokeRoundedPencilEdit01,
                        color: context.colorScheme.primary,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text('الاعدادات', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            OptionCard(
              leadingIcon: HugeIcons.strokeRoundedNotification01,

              text: 'الاشعارات',
              trailing: Switch.adaptive(
                value: isNotification,
                activeColor: context.colorScheme.primary,
                inactiveThumbColor: context.colorScheme.primary,
                inactiveTrackColor: context.colorScheme.surface,
                activeTrackColor: context.colorScheme.shadow,
                onChanged: (val) {
                  setState(() {
                    isNotification = val;
                  });
                },
              ),
            ),
            SizedBox(height: 8),
            OptionCard(
              leadingIcon: HugeIcons.strokeRoundedGlobe02,

              text: 'اللغة',
              trailing: ToggleButtons(
                isSelected: [!isEnglish, isEnglish],
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                onPressed: (index) {
                  setState(() {
                    isEnglish = index == 1;
                  });
                  if (isEnglish) {
                    ref
                        .read(localeNotifierProvider.notifier)
                        .setLocale(Locale('en'));
                  } else {
                    ref
                        .read(localeNotifierProvider.notifier)
                        .setLocale(Locale('ar'));
                  }
                },
                selectedColor: Colors.white,
                color: context.colorScheme.primary,
                fillColor: context.colorScheme.primary,
                borderColor: context.colorScheme.onPrimary,
                selectedBorderColor: context.colorScheme.primary,
                constraints: const BoxConstraints(minWidth: 67, minHeight: 24),
                children: const [Text('عربي'), Text('English')],
              ),
            ),
            SizedBox(height: 16),
            Text('الدعم', style: TextStyle(fontSize: 16)),

            OptionCard(
              leadingIcon: HugeIcons.strokeRoundedCustomerService01,
              text: 'الدعم الفني',
              trailing: IconButton(
                onPressed: () {
                  context.pushNamed(RouteNames.techSupportScreen);
                },
                icon: Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
            OptionCard(
              leadingIcon: HugeIcons.strokeRoundedPropertyEdit,
              text: 'الاحكام والشروط ',
              trailing: IconButton(
                onPressed: () {
                  context.pushNamed(RouteNames.termsConditionsScreen);
                },
                icon: Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
            SizedBox(height: 20),

            SizedBox(height: 5),
            OptionCard(
              text: 'حذف الحساب',
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
