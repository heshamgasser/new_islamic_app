
import 'package:flutter/material.dart';
import 'package:islamic/widgets/table_header.dart';

class HadeethTab extends StatelessWidget {
  const HadeethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image/background.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/image/hadeeth_image.png'),
            Divider(
              thickness: 3,
              color: Theme.of(context).primaryColor,
            ),
            Center(
              child: Text(
                'Hadeeth',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Divider(
              thickness: 3,
              color: Theme.of(context).primaryColor,
            ),

          ],
        ),
      ),
    );
  }
}
