import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:algad_almushriq/utlis/widgets/child_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../router/route_names.dart';

class DonationScreen extends StatelessWidget {
  const DonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final children = [
      {
        'name': 'محمد علي احمد',
        'state': 'مريض',
        'location': 'بغداد-الاعظمية',
        'image': 'assets/images/child1.jpg',
        'age': 7,
      },
      {
        'name': 'نور احمد عزيز',
        'state': 'طالب',
        'location': 'بغداد-الاعظمية',
        'image': 'assets/images/child2.jpg',
        'age': 7,
      },
      {
        'name': 'محمد علي احمد',
        'state': 'طالب',
        'location': 'بغداد-الاعظمية',
        'image': 'assets/images/child3.jpg',
        'age': 7,
      },
      {
        'name': 'محمد علي احمد',
        'state': 'طالب',
        'location': 'بغداد-الاعظمية',
        'image': 'assets/images/child3.jpg',
        'age': 7,
      },
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Padding(
          padding: EdgeInsets.only(
            bottom: 13.h,
            top: 4.h,
            right: 3.w,
            left: 3.w,
          ),
          child: Text(
            'تأكيد التبرع والكفالة',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 10.h,
              top: 2.h,
              left: 5.w,
              right: 5.w,
            ),
            child: ElevatedButton(
              onPressed: () {
                context.pushNamed(RouteNames.notificationScreen);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(11),
                elevation: 0,
                minimumSize: Size(13.w, 13.w),
                maximumSize: Size(13.w, 13.w),
                backgroundColor: Color(0x4DFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedNotification02,
                color: Colors.white,
              ),
            ),
          ),
        ],
        elevation: 0,
        toolbarHeight: 20.h,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 30.h,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Color(0xff41a2d8)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Image.asset(
                'assets/images/Vector2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 15.h,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16,
                      top: 43,
                      bottom: 10,
                      left: 16,
                    ),
                    child: Text(
                      'اقتراحات الكفالة',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      shrinkWrap: true,
                      separatorBuilder:
                          (context, index) => SizedBox(height: 10),
                      itemCount: children.length,
                      itemBuilder: (context, index) {
                        final child = children[index];
                        return ChildInfoCard(
                          name: child['name'] as String,
                          state: child['state'] as String,
                          location: child['location'] as String,
                          imageUrl: child['image'] as String,
                          age: child['age'] as int,
                          icon: HugeIcons.strokeRoundedLocation01,
                          onFirstButtonPressed: () {
                            context.pushNamed(
                              RouteNames.childDetailsScreen,
                              extra: child,
                            );
                          },
                          onSecondButtonPressed: () {},
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
