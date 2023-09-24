import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int sebhaCount = 0;
  double angle = 0;
  int zekrIndex = 0;

  List<String> zekr = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    'لا حول ولا قوة إلا بالله'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 80.h,bottom: 16.h, right: 16.w, left: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                InkWell(
                  onTap: () {
                    sebhaCount++;
                    counter();
                   angle = angle + (180/33);
                    setState(() {});
                  },
                  child: Transform.rotate(
                    angle: angle,
                    child: SizedBox(
                      width: 232.w,
                      height: 234.h,
                      child: Image.asset('assets/image/body of seb7a.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: -75.h,
                  child: SizedBox(
                      width: 73.w,
                      height: 105.h,
                      child: Image.asset('assets/image/head of seb7a.png')),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
                child: Text(
              'Sebha Count',
              style: Theme.of(context).textTheme.titleMedium,
            )),
            SizedBox(height: 35.h),
            InkWell(
              onTap: () {
                sebhaCount++;
                counter();
                angle = angle + (180/33);
                setState(() {});
              },
              child: Container(
                width: 69.w,
                height: 81.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Center(
                  child: Text(
                    '$sebhaCount',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Container(
              height: 65.h,
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Center(
                child: Text(
                  zekr[zekrIndex],
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 22.h),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Add',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Remove',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    onPressed: () {
                      reset();
                      setState(() {});
                    },
                    child: Text(
                      'Reset',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void counter() {
    if (sebhaCount % 33 == 0 && zekrIndex < zekr.length) {
      zekrIndex++;
      sebhaCount = 0;
    }
    if (zekrIndex == zekr.length) {
      zekrIndex = 0;
      sebhaCount = 0;
    }
  }

  void reset() {
    zekrIndex = 0;
    sebhaCount = 0;
    angle = 0;
  }
}
