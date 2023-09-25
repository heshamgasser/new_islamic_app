import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/models/hadeth_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethScreen extends StatelessWidget {
  static const String routeName = 'Hadeth Screen';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                Theme.of(context).colorScheme.brightness == Brightness.light
                    ? 'assets/image/background.png'
                    : 'assets/image/dark_bg.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.titleLarge),
        ),
        body: args.content.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                child: Column(
                  children: [
                    Text(
                      args.title,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Divider(
                      indent: 30.w,
                      endIndent: 30.w,
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Text(
                            args.content,
                            style: Theme.of(context).textTheme.displaySmall,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ),

                    // Expanded(
                    //   child: ListView.builder(
                    //     itemBuilder: (context, index) {
                    //       return Text(
                    //         args.content,
                    //         style: Theme.of(context).textTheme.displaySmall,
                    //         textDirection: TextDirection.rtl,
                    //       );
                    //     },
                    //     itemCount: args.content.length,
                    //   ),
                    // ),
                  ],
                ),
              ),
      ),
    );
  }
}
