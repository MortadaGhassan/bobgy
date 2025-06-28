import 'package:algad_almushriq/router/route_names.dart';
import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:algad_almushriq/utlis/widgets/tech_support_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

class TechSupportScreen extends StatelessWidget {
  const TechSupportScreen({super.key});

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
        leadingWidth: 40.w,
        leading: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 2.w),
          child: InkWell(
            onTap: () => context.pop(),
            borderRadius: BorderRadius.circular(15),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: Text(
                    "الدعم الفني",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: SizeConfig.font18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            context.pushNamed(RouteNames.addReportScreen);

            // Add your button logic here
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
          ),
          child: Row(
            spacing: 11,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'رفع شكوى',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              Icon(HugeIcons.strokeRoundedAddSquare, size: 18),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          padding: const EdgeInsets.only(
            bottom: 100,
            left: 8,
            right: 8,
            top: 8,
          ),
          children: [
            const Text('عام'),
            Column(
              children: [
                TechSupportCard(
                  stateText: 'مكتمل',
                  stateColor: context.colorScheme.secondary,
                  date: '2024/7/23 11:23 AM',
                  ticketCode: 'B872313A',
                ),
                TechSupportCard(
                  stateText: 'تتم المراجعة',
                  stateColor: context.colorScheme.secondaryFixed,
                  date: '2024/7/23 11:23 AM',
                  ticketCode: 'B872313A',
                ),
                TechSupportCard(
                  stateText: 'فشل',
                  stateColor: context.colorScheme.error,
                  date: '2024/7/23 11:23 AM',
                  ticketCode: 'B872313A',
                ),
                TechSupportCard(
                  stateText: 'قيد الانتظار',
                  stateColor: context.colorScheme.onError,
                  date: '2024/7/23 11:23 AM',
                  ticketCode: 'B872313A',
                ),
                TechSupportCard(
                  stateText: 'قيد الانتظار',
                  stateColor: context.colorScheme.onError,
                  date: '2024/7/23 11:23 AM',
                  ticketCode: 'B872313A',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
