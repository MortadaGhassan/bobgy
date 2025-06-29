import 'dart:io';

import 'package:algad_almushriq/theme/theme.dart';
import 'package:algad_almushriq/utlis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:image_picker/image_picker.dart';

class AddReportScreen extends StatefulWidget {
  const AddReportScreen({super.key});

  @override
  State<AddReportScreen> createState() => _AddReportScreenState();
}

class _AddReportScreenState extends State<AddReportScreen> {
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final ImagePicker picker = ImagePicker();
  File? _selectedImage;
  @override
  Widget build(BuildContext context) {
    Future<void> pickImage() async {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
      }
    }

    return Scaffold(
      backgroundColor: context.colorScheme.surface,
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
        leadingWidth: 40.w,
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
                    "الدعم الفني",
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
                'رفع الشكوى',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              Icon(HugeIcons.strokeRoundedAddSquare, size: 18),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text('الموضوع'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: TextField(
                textDirection: TextDirection.rtl,
                controller: _titleController,
                style: TextStyle(color: context.colorScheme.primary),
                decoration: InputDecoration(
                  hintTextDirection: TextDirection.rtl,
                  hintText: 'اكتب عنوان مشكلتك',
                  hintStyle: TextStyle(color: context.colorScheme.shadow),
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            Text('الوصف'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: TextField(
                textDirection: TextDirection.rtl,
                controller: _descriptionController,
                maxLines: 5,
                minLines: 5,
                maxLength: 100,
                style: TextStyle(color: context.colorScheme.primary),

                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintTextDirection: TextDirection.rtl,

                  hintText: 'اكتب وصف عن المشكلة',
                  hintStyle: TextStyle(color: context.colorScheme.shadow),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text('المرفقات'),
            SizedBox(height: 16),
            _selectedImage != null
                ? Image.file(
                  _selectedImage!,
                  height: 200,
                  width: double.infinity,
                )
                : Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: context.colorScheme.onSecondary),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.all(50),
                  child: GestureDetector(
                    onTap: pickImage,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('اضف صورة الطلب'),
                        Icon(HugeIcons.strokeRoundedUpload05),
                      ],
                    ),
                  ),
                ),
            // ElevatedButton(
            //   style: ButtonStyle(),
            //   onPressed: pickImage,
            //   child: Row(
            //     children: [
            //       Text('اضف صورة الطلب'),
            //       Icon(HugeIcons.strokeRoundedUpload05),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
