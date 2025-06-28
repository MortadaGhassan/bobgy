import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class OptionCard extends StatelessWidget {
  final IconData? leadingIcon;
  final String text;
  final Widget trailing;

  const OptionCard({
    super.key,
    this.leadingIcon,
    required this.text,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 9.h,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: context.colorScheme.onSecondary, width: 1.5),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: Row(
            children: [
              if (leadingIcon != null) ...[
                HugeIcon(
                  icon: leadingIcon!,
                  color: context.colorScheme.primary,
                ),
                const SizedBox(width: 15),
              ],
              Expanded(child: Text(text, textAlign: TextAlign.start)),
              trailing,
            ],
          ),
        ),
      ),
    );
  }
}
