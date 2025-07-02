import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  const CustomeTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.prefixIcon,
    this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      height: 7.h,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon, color: context.colorScheme.primary),
          errorStyle: const TextStyle(height: 0, fontSize: 0),
          hintText: hintText,
          hintStyle: Theme.of(
            context,
          ).textTheme.labelSmall!.copyWith(fontSize: SizeConfig.font16),
          isDense: false,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 1.5,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 1.5,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.red.shade800, width: 1.5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.red.shade800, width: 1.5),
          ),
        ),
        keyboardType: keyboardType ?? TextInputType.text,
        onChanged: (value) {
          controller!.text = value;
        },
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
        },
      ),
    );
  }
}
