import 'package:algad_almushriq/router/route_names.dart';
import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/widgets/custome_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'تسجيل الدخول',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 12),

            Text(
              ' ساهم معنا في بناء غدٍ مشرق للأيتام والمحتاجين',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 54),
            CustomeTextFormField(
              controller: emailController,
              hintText: 'رقم الهاتف',
              prefixIcon: HugeIcons.strokeRoundedCall,
            ),
            SizedBox(height: 16),
            CustomeTextFormField(
              obscureText: true,
              hintText: 'كلمة المرور',
              prefixIcon: HugeIcons.strokeRoundedCircleLock01,
              controller: passwordController,
            ),

            const SizedBox(height: 16),
            isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                  onPressed: () {
                    context.goNamed(RouteNames.homeScreen);
                  },
                  child: const Text("تسجيل الدخول"),
                ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: Color(0xffcce5f4),
                    thickness: 1,
                    height: 20,
                    indent: 16,
                    endIndent: 16,
                  ),
                ),

                Text('او', style: TextStyle(color: Color(0xffcce5f4))),
                Expanded(
                  child: Divider(
                    color: Color(0xffcce5f4),
                    thickness: 1,
                    height: 20,
                    indent: 16,
                    endIndent: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ليس لديك حساب؟'),
                TextButton(
                  onPressed: () {
                    isLoading = false;
                    context.pushNamed(RouteNames.authScreen);
                  },
                  child: Text(
                    'انشاء حساب',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: context.colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
