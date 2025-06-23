import 'package:algad_almushriq/router/route_names.dart';
import 'package:algad_almushriq/theme/theme.dart';
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'تسجيل الدخول',
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
            SizedBox(height: 30),
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
                    context.pushNamed(RouteNames.authScreen);
                  },
                  child: Text(
                    'انشاء حساب',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text('ليس لديك حساب؟'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
