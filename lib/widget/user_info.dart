import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class UserInfoCard extends StatelessWidget {
  final String name;
  final String phone;

  const UserInfoCard({super.key, required this.name, required this.phone});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(),
        ),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              CircleAvatar(
                radius: 30,
                child: HugeIcon(
                  icon: HugeIcons.strokeRoundedUser,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(name), Text(phone)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
