import 'package:algad_almushriq/providers/locale_provider.dart';
import 'package:algad_almushriq/router/route_names.dart';
import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:algad_almushriq/utlis/widgets/tab_button.dart';
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
  void showLogoutDialog() {
    showModalBottomSheet(
      showDragHandle: false,
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder:
          (context) => Padding(
            padding: EdgeInsets.only(
              left: 18,
              right: 18,
              top: 12,
              bottom: kBottomNavigationBarHeight - 10,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 150,
                    height: 6,
                    decoration: BoxDecoration(
                      color: context.colorScheme.onSurface.withAlpha(16),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  Image.asset(
                    'assets/images/alert1.gif',
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                  ),

                  Text(
                    'تسجيل الخروج',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'هل أنت متأكد أنك تريد تسجيل الخروج من حسابك',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF8a8c8d),
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        debugPrint('Logging out...');
                      },
                      child: const Text(
                        'تسجيل الخروج',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(
                        color: Color(0xFF8a8c8d),
                        HugeIcons.strokeRoundedInformationCircle,
                        size: 16,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'تسجيل الخروج لن يحذف بياناتك. يمكنك العودة في أي وقت.',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF8a8c8d),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }

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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
                    children: [
                      CircleAvatar(
                        radius: 20,
                        child: HugeIcon(
                          icon: HugeIcons.strokeRoundedUser02,
                          color: context.colorScheme.surface,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                      Spacer(),
                      HugeIcon(
                        icon: HugeIcons.strokeRoundedPencilEdit01,
                        color: context.colorScheme.primary,
                      ),
                      SizedBox(width: 2.w),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text('الاعدادات', style: TextStyle(fontSize: 16)),
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
              trailing: TabButton(),
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
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
            OptionCard(
              leadingIcon: HugeIcons.strokeRoundedPropertyEdit,
              text: 'الاحكام والشروط ',
              trailing: IconButton(
                onPressed: () {
                  context.pushNamed(RouteNames.termsConditionsScreen);
                },
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
            SizedBox(height: 20),

            SizedBox(height: 5),
            OptionCard(
              text: 'تسجيل الخروج',
              trailing: IconButton(
                onPressed: () {
                  showLogoutDialog();
                },
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
