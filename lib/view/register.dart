import 'package:algad_almushriq/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'انشاء حساب',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              ' ساهم معنا في بناء غدٍ مشرق للأيتام والمحتاجين',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                suffixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedUser,
                  color: context.colorScheme.primary,
                ),
                hintTextDirection: TextDirection.rtl,
                hintText: 'الاسم الكامل',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                suffixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedCall,
                  color: context.colorScheme.primary,
                ),
                hintTextDirection: TextDirection.rtl,
                hintText: 'رقم الهاتف',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintTextDirection: TextDirection.rtl,

                hintText: 'كلمة المرور',
                suffixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedCircleLock01,
                  color: context.colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintTextDirection: TextDirection.rtl,

                hintText: 'تأكيد كلمة المرور',
                suffixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedCircleLock01,
                  color: context.colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(height: 20),
            isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                  onPressed: () {},
                  child: const Text("تسجيل الدخول"),
                ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    isLoading = false;
                    context.pop();
                  },
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text('لديك حساب بالفعل؟'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
