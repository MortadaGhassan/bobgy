import 'package:flutter/material.dart';

import '../utlis/size_config.dart';

class OrphanCustodyProgrammeScreen extends StatelessWidget {
  const OrphanCustodyProgrammeScreen({super.key});

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
        actions: [
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(15),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: Text(
                    "برنامج الكفالة",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: SizeConfig.font18,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 30.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/74cca0dcff25227fd27067f8f0d7cf115d589955.jpg',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Color(0x5E41A2D8),
                      BlendMode.lighten,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30.w,
                bottom: 3.5.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    minimumSize: Size(40.w, 5.h),
                    maximumSize: Size(40.w, 5.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'ابدا الان',
                    style: TextStyle(fontSize: SizeConfig.font18),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 6.h,
            width: 70.w,
            padding: EdgeInsets,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text('انواع الكفالة', style: TextStyle()),
            ),
          ),
        ],
      ),
    );
  }
}
