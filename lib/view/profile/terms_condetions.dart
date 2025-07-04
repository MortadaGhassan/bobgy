import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(
      context,
    ).textTheme.titleMedium?.copyWith(color: Color(0xFF8a8c8d));
    final bodyStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
      height: 1.6,
      fontSize: 16,
      color: Color(0xFF8a8c8d),
    );

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
                Text(
                  "الاحكام والشروط",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1. قبول الأحكام والشروط', style: titleStyle),
              const SizedBox(height: 6),
              Text(
                'عند استخدامك لتطبيق مؤسسة "الغد المشرق"، فإنك توافق على الالتزام بهذه الأحكام والشروط بالكامل. إذا كنت لا توافق عليها، يرجى التوقف عن استخدام التطبيق.',
                style: bodyStyle,
                softWrap: true,
              ),
              const SizedBox(height: 16),

              Text('2. الغرض من التطبيق', style: titleStyle),
              const SizedBox(height: 6),
              Text(
                'تم تصميم هذا التطبيق لتسهيل عمليات الكفالة والتبرع للأيتام والفقراء من خلال الخدمات الإلكترونية، بما في ذلك:\n'
                '- تقديم طلبات الكفالة.\n'
                '- التبرع بالسلع أو الأموال.\n'
                '- متابعة الكفالات والتبرعات.\n'
                '- التواصل مع المؤسسة لمتابعة الحالات.',
                style: bodyStyle,
                softWrap: true,
              ),
              const SizedBox(height: 16),

              Text('3. تسجيل الحساب', style: titleStyle),
              const SizedBox(height: 6),
              Text(
                'يجب أن يكون لديك حساب مستخدم صالح لاستخدام خدمات التطبيق. يتطلب التسجيل تقديم معلومات دقيقة وحديثة، بما في ذلك الاسم، رقم الهاتف، والبريد الإلكتروني.',
                style: bodyStyle,
              ),
              const SizedBox(height: 16),

              Text('4. التبرعات والكفالات', style: titleStyle),
              const SizedBox(height: 6),
              Text(
                'يمكن للمستخدم اختيار المساهمة عبر الكفالة أو التبرعات. جميع المساهمات التي تتم عبر التطبيق تعتبر نهائية وغير قابلة للاسترداد. سيتم استخدام التبرعات والكفالات فقط للأغراض التي حُددت لها من قبل المؤسسة.',
                style: bodyStyle,
              ),
              const SizedBox(height: 16),

              Text('5. الخصوصية', style: titleStyle),
              const SizedBox(height: 6),
              Text(
                'نحن ملتزمون بحماية بياناتك الشخصية بما يتماشى مع سياسة الخصوصية. لن تتم مشاركة معلوماتك مع أي جهة خارجية دون موافقتك.',
                style: bodyStyle,
              ),
              const SizedBox(height: 16),

              Text('6. المسؤوليات', style: titleStyle),
              const SizedBox(height: 6),
              Text(
                'يلتزم المستخدم باستخدام التطبيق والخدمات المقدمة فيه بطريقة قانونية وأخلاقية. المؤسسة غير مسؤولة عن أي إساءة استخدام للخدمات من قبل المستخدم.',
                style: bodyStyle,
              ),
              const SizedBox(height: 16),

              Text('7. استخدام التطبيق', style: titleStyle),
              const SizedBox(height: 6),
              Text(
                'الخدمات المتوفرة في التطبيق مقدمة "كما هي" دون أي ضمانات إضافية. تحتفظ المؤسسة بالحق في تعديل أو إيقاف أي خدمة دون إشعار مسبق.',
                style: bodyStyle,
              ),
              const SizedBox(height: 16),

              Text('8. التعديلات على الأحكام والشروط', style: titleStyle),
              const SizedBox(height: 6),
              Text(
                'قد يتم تحديث هذه الأحكام والشروط من وقت لآخر. ستتم مشاركة التحديثات مع المستخدمين عبر التطبيق.',
                style: bodyStyle,
              ),
              const SizedBox(height: 16),

              Text('9. التواصل', style: titleStyle),
              const SizedBox(height: 6),
              Text(
                'إذا كنت بحاجة إلى أي استفسارات أو دعم، يرجى التواصل مع فريق الدعم الخاص بنا عبر البريد الإلكتروني: [أدخل بريد التواصل] أو الاتصال عبر الرقم: [أدخل رقم الهاتف].',
                style: bodyStyle,
              ),
              const SizedBox(height: 16),

              Text('إضافات مقترحة', style: titleStyle),
              const SizedBox(height: 6),
              Text(
                '- فقرة توضح "ضمان الشفافية" في كيفية استخدام التبرعات.\n'
                '- تأكيد على حق المستخدم في الاطلاع على تقارير الكفالات أو التبرعات التي تمت من خلاله.',
                style: bodyStyle,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
