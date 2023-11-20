import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding:  EdgeInsets.all(8.0),
          //done: wrap this in a CircleAvatar:
          // child: CircleAvatar(backgroundImage: AssetImage('images/app_logo.jpg')),
          child: CircleAvatar( radius: 80,
           backgroundImage: AssetImage('images/app_logo.jpg'),),
        ),
      ],
    );
  }
}