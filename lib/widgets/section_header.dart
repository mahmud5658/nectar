import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Exclusive Offer',
          style: TextStyle(fontSize: 5.sp, fontWeight: FontWeight.w800),
        ),
        TextButton(
            style: TextButton.styleFrom(
              overlayColor: Colors.transparent,
            ),
            onPressed: () {},
            child: Text('See All'))
      ],
    );
  }
}

