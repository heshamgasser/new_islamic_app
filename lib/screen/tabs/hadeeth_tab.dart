import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/provider/ahadeth_provider.dart';
import 'package:islamic/screen/views/hadeth_screen.dart';
import 'package:provider/provider.dart';

class HadeethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AhadethProvider(),
      builder: (context, child) {
        var ahadethProvider = Provider.of<AhadethProvider>(context);

        if (ahadethProvider.ahadeth.isEmpty) {
          ahadethProvider.loadHadethFile();
        }

        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/image/hadeeth_image.png'),
              Divider(),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.hadeth,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Divider(),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, HadethScreen.routeName,
                              arguments: ahadethProvider.ahadeth[index]);
                        },
                        child: Text(
                          ahadethProvider.ahadeth[index].title,
                          style: Theme.of(context).textTheme.displayLarge,
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: ahadethProvider.ahadeth.length),
              ),
            ],
          ),
        );
      },
    );
  }
}
