import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.location_on),
        Text(
          'Savar,Dhaka',
          style: TextStyle(fontSize: 5.sp, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}