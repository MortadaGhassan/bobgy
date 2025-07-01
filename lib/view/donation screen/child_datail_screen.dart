import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:algad_almushriq/utlis/widgets/child_details_card.dart';
import 'package:algad_almushriq/utlis/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ChildDatailScreen extends StatelessWidget {
  final Map<String, dynamic> child;

  const ChildDatailScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    print('imageUrl ${child['imageUrl']}');
    return Scaffold(
      appBar: CustomAppbar(title: child['name'] ?? 'child details'),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
          ),
          child: Row(
            spacing: 11,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' قبول الكفالة',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChildDetailsCard(
              name: child['name'] ?? '',
              state: child['state'] ?? '',
              location: child['location'] ?? '',
              imageUrl: child['image'] ?? 'assets/images/child2.jpg',
              age: child['age'] ?? 0,
            ),
            Container(
              margin: EdgeInsets.only(left: 2.w, right: 2.w),
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
              width: 90.w,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                border: Border.all(color: Colors.white, width: 0.5.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(child['name']),
                  Text(
                    '''طالبة مجتهدة في الصف الثاني الابتدائي تدرس في مدرسة المنارة للمتفوقين. تبلغ من العمر 8 سنوات وتنحدر من أسرة تتكون من 5 أفراد. نور فقدت والدها منذ صغرها، لكنها تواصل مسيرتها الدراسية بتفوق وإصرار، لتساهم في تعليم الأجيال القادمة. بفضل دعمكم، تنمو نور في بيئة آمنة ومستقرة.''',
                    style: TextStyle(
                      fontSize: SizeConfig.font14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          width: double.infinity,
                          height: 20.h,
                          'assets/images/74cca0dcff25227fd27067f8f0d7cf115d589955.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/74cca0dcff25227fd27067f8f0d7cf115d589955.jpg',
                                    fit: BoxFit.fill,
                                    height: 15.h,
                                  ),
                                ),
                                Container(
                                  height: 15.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.black.withValues(alpha: 0.4),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    '+4',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 2.w),

                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/images/74cca0dcff25227fd27067f8f0d7cf115d589955.jpg', // replace with your image
                                fit: BoxFit.cover,
                                height: 15.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
