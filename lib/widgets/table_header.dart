import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  String text;


  TableHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
