import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:algad_almushriq/utlis/widgets/child_card.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(11),
                elevation: 0,
                minimumSize: Size(13.w, 13.w),
                maximumSize: Size(13.w, 13.w),
                backgroundColor: Color.fromARGB(77, 46, 4, 4),
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
        toolbarHeight: 10.h,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 25.h,
            child: Container(
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
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: MediaQuery.of(context).padding.top + kToolbarHeight,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(25),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 3.49.w,
                  ),
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
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
                            onFirstButtonPressed: () {},
                            onSecondButtonPressed: () {},
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
