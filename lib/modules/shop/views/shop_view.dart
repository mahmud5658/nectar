import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/app/constants/app_assets.dart';
import 'package:nectar/widgets/custom_search_field.dart';
import 'package:nectar/widgets/svg_image.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            SvgImage(
              img: AppAssets.carrotRed,
              height: 30,
              width: 30,
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text(
                  'Savar,Dhaka',
                  style: TextStyle(fontSize: 5.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomSearchField(),
            SizedBox(
              height: 20.h,
            ),
            _bannerSlider(),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exclusive Offer',
                  style: TextStyle(fontSize: 5.sp, fontWeight: FontWeight.w800),
                ),
                TextButton(onPressed: () {}, child: Text('See All'))
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: Colors.amber
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }

  CarouselSlider _bannerSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        AppAssets.banner,
                      ))),
            );
          },
        );
      }).toList(),
    );
  }
}
