import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/app/theme/app_colors.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10.r),
        shape: BoxShape.rectangle
      ),
      child: IconButton(
        highlightColor: Colors.transparent,
        color: Colors.white,
          onPressed: () {},
          icon: Icon(Icons.add)),
    );
  }
}
