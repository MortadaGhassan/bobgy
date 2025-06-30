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
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();
  bool isLoading = false;
  void registerUser() async {
    if (numberController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        rePasswordController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("الرجاء ملئ كل الحقول ")));
      return;
    }

    if (passwordController.text != rePasswordController.text) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("كلمة المرور غير مطابقة")));
      return;
    }

    setState(() => isLoading = true);

    setState(() => isLoading = false);
  }

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
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 12),

            Text(
              ' ساهم معنا في بناء غدٍ مشرق للأيتام والمحتاجين',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 54),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedUser,
                  color: context.colorScheme.primary,
                ),
                hintText: 'الاسم الكامل',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: numberController,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                prefixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedCall,
                  color: context.colorScheme.primary,
                ),
                hintText: 'رقم الهاتف',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'كلمة المرور',
                prefixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedCircleLock01,
                  color: context.colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: rePasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'تأكيد كلمة المرور',
                prefixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedCircleLock01,
                  color: context.colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(height: 20),
            isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                  onPressed: () {
                    registerUser();
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
            SizedBox(height: 16),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('لديك حساب بالفعل؟'),
                TextButton(
                  onPressed: () {
                    isLoading = false;
                    context.pop();
                  },
                  child: Text(
                    'تسجيل الدخول',
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
