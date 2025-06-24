import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class OptionCard extends StatelessWidget {
  final IconData leadingIcon;
  final String text;
  final ValueChanged<bool>? onChanged;
  final bool value;

  const OptionCard({
    super.key,
    required this.leadingIcon,
    required this.text,
    this.onChanged,
    required this.value,
  });

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
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              HugeIcon(
                icon: leadingIcon,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 15),
              Expanded(child: Text(text, textAlign: TextAlign.end)),
              Switch(value: value, onChanged: onChanged),
            ],
          ),
        ),
      ),
    );
  }
}
