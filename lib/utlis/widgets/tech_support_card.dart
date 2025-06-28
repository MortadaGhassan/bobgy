import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class TechSupportCard extends StatelessWidget {
  final String stateText;
  final Color stateColor;
  final String date;
  final String ticketCode;
  final IconData dateIcon;
  final IconData codeIcon;

  const TechSupportCard({
    super.key,
    required this.stateText,
    required this.stateColor,
    required this.date,
    required this.ticketCode,
    this.dateIcon = HugeIcons.strokeRoundedCalendar01,
    this.codeIcon = HugeIcons.strokeRoundedTicket01,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16.h,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 1.5,
          ),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          textDirection: TextDirection.ltr,
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          dateIcon,
                          size: 15,
                          color: context.colorScheme.primary,
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          ticketCode,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          textDirection: TextDirection.ltr,
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          codeIcon,
                          size: 15,
                          color: context.colorScheme.primary,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 28,
                width: 91,
                alignment: Alignment.center,

                // padding: const EdgeInsets.symmetric(
                //   horizontal: 10,
                //   vertical: 5,
                // ),
                decoration: BoxDecoration(
                  color: stateColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  stateText,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
