import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final double size;
  const LoadingIndicator({Key key, this.size = 50.0}) : super(key: key);

  @override
  Widget build(BuildContext context) => CircularProgressIndicator(
        // backgroundColor: Theme.of(context).primaryColor,
        strokeWidth: 3,
      );
}
