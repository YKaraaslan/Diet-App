import 'package:flutter/material.dart';

class AppCircularImage extends StatelessWidget {
  const AppCircularImage({
    @required this.radius,
  });

  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage('assets/images/sign_up/profile_photo.png'),
    );
  }
}
