import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingBodyWidget extends StatelessWidget {
  String text;
  String optionOne;
  String optionTwo;


  SettingBodyWidget({required this.text,required this.optionOne,required this.optionTwo});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context, builder: (context) {
          return Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(optionOne, style: Theme.of(context).textTheme.titleMedium,)),
                    Icon(Icons.done , size: 30.r,)
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(child: Text(optionTwo, style: Theme.of(context).textTheme.titleMedium,)),
                    Icon(Icons.done , size: 30.r,)
                  ],
                ),
              ],
            ),
          );
        },);
      },
      child: Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      height: 60.h,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.r),
      border: Border.all(color: Theme.of(context).secondaryHeaderColor)
      ),
      child: Text(text, style: Theme.of(context).textTheme.titleMedium,),
      ),
    );
  }
}
