import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/radio.png'),
            SizedBox(height: 55.h),
            Text(
              'Quraan Radio',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 65.h),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 15.w,
                    height: 25.h,
                    child: Image.asset('assets/image/previous.png',),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 32.w,
                    height: 36.h,
                    child: Image.asset('assets/image/play.png'),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 15.w,
                    height: 25.h,
                    child: Image.asset('assets/image/next.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
