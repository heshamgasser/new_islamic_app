import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingBodyWidget extends StatelessWidget {
  String header;
  String text;
  String optionOne;
  String optionTwo;
  bool selector;
  Function optionOneFunction;
  Function optionTwoFunction;
  Function optionOneSelectionFunction;
  Function optionTwoSelectionFunction;

  SettingBodyWidget(
      {required this.header,
      required this.text,
      required this.optionOne,
      required this.optionTwo,
      required this.selector,
      required this.optionOneFunction,
      required this.optionTwoFunction,
      required this.optionOneSelectionFunction,
      required this.optionTwoSelectionFunction});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r),
              topLeft: Radius.circular(20.r),
            ),
          ),
          context: context,
          builder: (context) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      header,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Divider(
                    indent: 40.w,
                    endIndent: 40.w,
                  ),
                  SizedBox(height: 15.h),
                  InkWell(
                    onTap: () {
                      optionOneFunction();
                      optionOneSelectionFunction();
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          optionOne,
                          style: selector
                              ? Theme.of(context).textTheme.titleSmall
                              : Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                        )),
                        Visibility(
                          visible: selector,
                          child: Icon(
                            Icons.done,
                            size: 30.r,
                            color: Theme.of(context).colorScheme.onPrimary
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      optionTwoFunction();
                      optionTwoSelectionFunction();
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          optionTwo,
                          style: !selector
                              ? Theme.of(context).textTheme.titleSmall
                              : Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                        )),
                        Visibility(
                          visible: !selector,
                          child: Icon(
                            Icons.done,
                            size: 30.r,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        height: 60.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: Theme.of(context).secondaryHeaderColor)),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
