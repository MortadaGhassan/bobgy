import 'package:algad_almushriq/enums/payment_methods.dart';
import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utlis/widgets/custom_dropdown_button.dart';
import '../../utlis/widgets/custome_textformfield.dart';

class CustodyApplyingScreen extends StatefulWidget {
  const CustodyApplyingScreen({super.key});

  @override
  State<CustodyApplyingScreen> createState() => _CustodyApplyingScreenState();
}

class _CustodyApplyingScreenState extends State<CustodyApplyingScreen> {
  GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
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
        leadingWidth: 45.w,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: InkWell(
            onTap: () => context.pop(),
            borderRadius: BorderRadius.circular(15),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
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
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Form(
          key: formState,
          child: Column(
            children: [
              CustomeTextFormField(hintText: 'الاسم الكامل'),
              CustomeTextFormField(hintText: 'التولد'),
              CustomeTextFormField(hintText: 'اسم الشخص المكفول له'),
              CustomeTextFormField(hintText: 'تاريخ وفاة المكفول له'),
              CustomeTextFormField(hintText: 'العمل'),
              CustomeTextFormField(hintText: 'العنوان'),
              CustomeTextFormField(hintText: 'التحصيل الدراسي'),
              CustomeTextFormField(
                hintText: 'رقم الهاتف',
                keyboardType: TextInputType.numberWithOptions(),
              ),
              CustomeTextFormField(hintText: 'عدد الايتام الذي تنوي كفالتهم'),
              CustomeTextFormField(hintText: 'المبلغ المخصص لكل يتيم'),
              CustomeTextFormField(hintText: 'تاريخ بدأ الكفالة'),
              CustomDropdownButton(),
              CustomeTextFormField(hintText: 'كيف تعرفت على المؤسسة'),
              CustomeTextFormField(
                hintText: 'الشخص الذي تعرفت عليه داخل المؤسسة',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(right: 17, left: 17, bottom: 25),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 7.h),
          ),
          onPressed: () {
            if (formState.currentState!.validate()) {
              showDialog(
                context: context,
                builder:
                    (context) => Dialog(
                      backgroundColor: Color(0xCC000000),
                      child: Container(
                        height: 13.h,
                        width: 51.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_rounded,
                              color: context.colorScheme.onPrimary,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'تم تقديم الطلب بنجاح',
                              style: TextStyle(
                                color: context.colorScheme.onPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
              );
            }
          },
          child: Text(
            'تقديم الطلب',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
