import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/app/constants/app_assets.dart';
import 'package:nectar/widgets/svg_image.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SvgImage(img: AppAssets.carrotRed)),
            SizedBox(height: 80.h),
            Text('Sign Up',
                style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.bold)),
            Text('Enter your credentials to continue',
                style: TextStyle(fontSize: 3.sp, fontWeight: FontWeight.w600)),
              
            SizedBox(height: 20.h),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
            SizedBox(height: 20.h),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            SizedBox(height: 20.h),
            TextFormField(
               decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            SizedBox(height: 20.h),
            ElevatedButton(onPressed: () {}, child: Text('Sign Up')),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: "already have an account? ",
                  style: TextStyle(
                      color: Colors.black, fontSize: 16), // Added font size
                  children: [
                    TextSpan(
                      text: "Login",
                      style: TextStyle(
                        fontSize: 14, // Adjust the font size accordingly
                        color: Colors.green, // Change to your desired color
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
