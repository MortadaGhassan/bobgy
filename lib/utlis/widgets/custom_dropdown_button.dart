import 'package:flutter/material.dart';
import '../../enums/payment_methods.dart';
import '../size_config.dart';

class CustomDropdownButton extends StatefulWidget {
  CustomDropdownButton({super.key});

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  PaymentMethods? payBy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: EdgeInsets.symmetric(vertical: 6),
      height: 7.h,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
      ),
      child: DropdownButton(
        value: payBy,
        icon: Icon(Icons.keyboard_arrow_down_rounded, size: 8.w),
        underline: SizedBox.shrink(),
        borderRadius: BorderRadius.circular(30),
        hint: Text(
          'التبرع بواسطة',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: SizeConfig.font18,
            color: Color(0xff8b8c8d),
          ),
        ),
        isExpanded: true,
        items:
            PaymentMethods.values
                .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
                .toList(),
        onChanged: (newValue) {
          payBy = newValue!;
          setState(() {});
        },
      ),
    );
  }
}
