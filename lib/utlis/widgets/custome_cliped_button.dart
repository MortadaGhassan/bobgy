import 'package:flutter/material.dart';

import '../size_config.dart';

class CustomeClipedButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final double height;
  final double width;
  final bool reversed;
  const CustomeClipedButton({
    super.key,
    required this.onTap,
    required this.height,
    required this.width,
    required this.reversed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.grey[400],
        borderRadius: BorderRadius.circular(5),
        child: ClipPath(
          clipper: NotechedButtonClipper(),
          child: Container(
            height: height,
            width: width,
            color: Theme.of(context).colorScheme.surface,
            child: Transform(
              alignment: Alignment.center,
              transform:
                  reversed == true
                        ? (Matrix4.identity()..scale(-1.0, 1.0))
                        : Matrix4.identity()
                    ..scale(1.0, 1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'تبرع الان',
                    style: TextStyle(
                      fontSize: SizeConfig.font14,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 6.w,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NotechedButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final height = size.height;
    final width = size.width;
    //Top-left
    path.moveTo(0, height * 0.10);
    path.quadraticBezierTo(0, 0, height * 0.10, 0);
    path.lineTo(height * 0.10, 0);
    path.lineTo(width - height * 0.10, 0);
    path.quadraticBezierTo(width, 0, width, height * 0.10);
    path.lineTo(width, height * 0.10);
    path.lineTo(width, height * 0.90);
    path.quadraticBezierTo(width, height, width - height * 0.10, height);
    path.lineTo(width - height * 0.10, height);
    path.lineTo(height * 0.60, height);
    path.quadraticBezierTo(height * 0.5, height, height * 0.40, height * 0.90);
    path.lineTo(height * 0.40, height * 0.90);
    path.lineTo(height * 0.1, height * 0.60);
    path.quadraticBezierTo(0, height * 0.5, 0, height * 0.4);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
