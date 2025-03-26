import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/app/constants/app_assets.dart';
import 'package:nectar/widgets/custom_add_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          Image.asset(AppAssets.productImg),
          SizedBox(
            height: 5.h,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fresh Fruits',
                  style: TextStyle(
                      fontSize: 3.sp, fontWeight: FontWeight.bold),
                ),
                Text('1kg price'),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '100 Tk.',
                      style: TextStyle(
                          fontSize: 5.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    CustomAddButton()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

