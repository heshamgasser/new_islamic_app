import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/provider/sebha_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SebhaProvider(),
      builder: (context, child) {
        var sebhaProvider = Provider.of<SebhaProvider>(context);

        return Scaffold(
          body: Padding(
            padding: EdgeInsets.only(
                top: 80.h, bottom: 16.h, right: 16.w, left: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      InkWell(
                        onTap: () {
                          sebhaProvider.changeCounter();
                        },
                        child: Transform.rotate(
                          angle: sebhaProvider.angle,
                          child: SizedBox(
                            width: 232.w,
                            height: 234.h,
                            child:
                                Image.asset('assets/image/body of seb7a.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -75.h,
                        child: SizedBox(
                            width: 73.w,
                            height: 105.h,
                            child:
                                Image.asset('assets/image/head of seb7a.png')),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    AppLocalizations.of(context)!.sebhaCount,
                    style: Theme.of(context).textTheme.titleMedium,
                  )),
                ),
                InkWell(
                  onTap: () {
                    sebhaProvider.changeCounter();
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
                        '${sebhaProvider.sebhaCount}',
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
                      sebhaProvider.zekr[sebhaProvider.zekrIndex],
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 22.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    onPressed: () {
                      sebhaProvider.reset();
                    },
                    child: Text(
                      AppLocalizations.of(context)!.reset,
                      style: Theme.of(context).textTheme.displayMedium,
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
                          AppLocalizations.of(context)!.add,
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
                          AppLocalizations.of(context)!.remove,
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
      },
    );
  }
}
