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
      body: Column(
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
                Text('''
طالبة مجتهدة في الصف الثاني الابتدائي تدرس في مدرسة المنارة للمتفوقين. تبلغ من العمر 8 سنوات وتنحدر من أسرة تتكون من 5 أفراد. نور فقدت والدها منذ صغرها، لكنها تواصل مسيرتها الدراسية بتفوق وإصرار.، لتساهم في تعليم الأجيال القادمة. بفضل دعمكم، تنمو نور في بيئة آمنة ومستقرة.
'''),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/1403223749f2922537c6b44743dc7f94f1635fb3.jpg',
                        fit: BoxFit.cover,
                      ),
                      Row(
                        children: [
                          Image.asset('name', fit: BoxFit.fill),
                          Image.asset(''),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
