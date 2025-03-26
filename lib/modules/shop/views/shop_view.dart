
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/app/constants/app_assets.dart';
import 'package:nectar/widgets/banner_slider.dart';
import 'package:nectar/widgets/custom_search_field.dart';
import 'package:nectar/widgets/horizontal_list_view.dart';
import 'package:nectar/widgets/location_widget.dart';
import 'package:nectar/widgets/section_header.dart';
import 'package:nectar/widgets/svg_image.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(left: 15),
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
          LocationWidget(),
          SizedBox(
            height: 20.h,
          ),
          CustomSearchField(),
          SizedBox(
            height: 20.h,
          ),
         BannerSlider(),
          SizedBox(
            height: 20.h,
          ),
          SectionHeader(),
          SizedBox(
            height: 20.h,
          ),
          HorizontalListView(),
              SizedBox(
            height: 20.h,
          ),
          SectionHeader(),
           SizedBox(
            height: 20.h,
          ),
          HorizontalListView(),
        ],
      ),
    );
  }
}

