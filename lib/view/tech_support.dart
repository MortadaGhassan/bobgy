import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/widgets/tech_support_card.dart';
import 'package:flutter/material.dart';

class TechSupportScreen extends StatelessWidget {
  const TechSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'الدعم الفني',
            style: TextStyle(color: context.colorScheme.onSecondary),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: context.colorScheme.onSecondary,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),

        // 👇 Fixed Button at Bottom
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              // Add your button logic here
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
            ),
            child: const Text('إنشاء تذكرة جديدة'),
          ),
        ),

        // 👇 Scrollable List with padding at the bottom
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
      ),
    );
  }
}
