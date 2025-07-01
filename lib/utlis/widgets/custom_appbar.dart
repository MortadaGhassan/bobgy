import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar({required this.title, super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff2c759e), Color(0xff41a2d8)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Image.asset('assets/images/Vector2.png', fit: BoxFit.cover),
            // 'assets/images/Vector2.png',
          ),
        ],
      ),
      leadingWidth: 200,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: InkWell(
          onTap: () => Navigator.of(context).pop(),
          borderRadius: BorderRadius.circular(15),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_rounded),
              Padding(
                padding: EdgeInsets.only(bottom: 1.h),
                child: Text(
                  title,
                  style: TextStyle(
                    color: context.colorScheme.onPrimary,
                    fontSize: SizeConfig.font18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
