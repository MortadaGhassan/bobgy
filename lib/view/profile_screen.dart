import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/widgets/option_card.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        spacing: Checkbox.width,
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
            width: 340,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                side: BorderSide(),
              ),
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedUser,
                        color: context.colorScheme.primary,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text('مرتضى غسان'), Text('07700000000')],
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
          OptionCard(
            leadingIcon: HugeIcons.strokeRoundedNotification01,
            text: 'الاشعارات',
            value: false,
          ),
        ],
      ),
    );
  }
}
