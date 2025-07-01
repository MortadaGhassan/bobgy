import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import '../utlis/widgets/custody_number_card.dart';
import 'package:algad_almushriq/enums/custody_state_type.dart';

class SponsorshipScreen extends StatelessWidget {
  const SponsorshipScreen({super.key});

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
      ),
      backgroundColor: context.colorScheme.surface,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 6.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: HugeIcon(
                          icon: HugeIcons.strokeRoundedSearch01,
                          color: context.colorScheme.primary,
                        ),
                        filled: true,
                        hintText: 'ابحث عن كفالة معينة',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: context.colorScheme.onPrimary,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          borderSide: BorderSide(
                            color: context.colorScheme.onPrimary,
                            width: 1.5,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: context.colorScheme.primary),
                    foregroundColor: Color(0xff41A2D8),
                    backgroundColor: context.colorScheme.onPrimary,
                    alignment: Alignment.center,
                    minimumSize: Size(5.w, 5.h),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(11),
                  ),
                  child: HugeIcon(
                    icon: HugeIcons.strokeRoundedMenu08,
                    color: context.colorScheme.primary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Container(
              height: 13.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.colorScheme.surface,
                borderRadius: BorderRadius.circular(15),
                border: BoxBorder.all(color: context.colorScheme.onPrimary),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('إجمالي المبلغ المتبرع به حتى الآن'),
                  Text(
                    '2,500,000 د.ع',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: SizeConfig.font20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                CustodyNumbersCard(num: 16, state: 'اجمالي الكفالات'),
                SizedBox(width: 10),
                CustodyNumbersCard(num: 12, state: 'النشطة'),
                SizedBox(width: 10),
                CustodyNumbersCard(num: 4, state: 'المنتهية'),
              ],
            ),
            // Immediate donation
            Padding(
              padding: EdgeInsets.only(right: 5, top: 12, bottom: 16),
              child: Text(
                'التبرع الفوري',
                style: TextStyle(
                  fontSize: SizeConfig.font16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 0),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CustodyState(
                  name: 'محمد احمد',
                  custodyDuration: 6,
                  state: CustodyStateType.paused,
                  dateStarted: '11/27/2024 10:30 Am',
                );
              },
              separatorBuilder: (context, indext) => SizedBox(height: 16),
              itemCount: 8,
            ),
          ],
        ),
      ),
    );
  }
}

class CustodyState extends StatelessWidget {
  const CustodyState({
    super.key,
    required this.name,
    required this.custodyDuration,
    required this.dateStarted,
    required this.state,
  });

  final String name;
  final int custodyDuration;
  final String dateStarted;
  final CustodyStateType state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(15),
        border: BoxBorder.all(color: context.colorScheme.onPrimary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: SizeConfig.font16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text('مدة الكفالة : $custodyDuration اشهر'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 4.5.h,
                width: 30.w,
                decoration: BoxDecoration(
                  color:
                      state == CustodyStateType.expired
                          ? Color(0xfff1bdc0)
                          : state == CustodyStateType.active
                          ? Color(0xffb6f1d6)
                          : Color(0xffb6c5f4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    state.state,
                    style: TextStyle(
                      color:
                          state == CustodyStateType.expired
                              ? Color(0xffdc1f1f)
                              : state == CustodyStateType.active
                              ? Color(0xff0ad96d)
                              : Color(0xff0a3ad9),
                    ),
                  ),
                ),
              ),
              Text(dateStarted),
            ],
          ),
        ],
      ),
    );
  }
}
