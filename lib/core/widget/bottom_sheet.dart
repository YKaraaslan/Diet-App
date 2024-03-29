import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    @required this.size,
    @required this.child,
  });

  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(20),
          topRight: const Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Icon(
              AppIcons.minus,
              color: Colors.blue[200],
              size: 25,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
