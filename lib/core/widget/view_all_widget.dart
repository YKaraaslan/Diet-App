import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class ViewAllWidget extends StatelessWidget {
  final Widget child;
  final title;
  final VoidCallback onClick;

  ViewAllWidget({@required this.child, @required this.title, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          diets_header(context),
          child,
        ],
      ),
    );
  }

  Widget diets_header(context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(title, style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 17)),
            ),
            TextButton(
              onPressed: () {
                onClick();
              },
              child: Text(
                'see_all'.tr,
                style: TextStyle(color: Theme.of(context).textTheme.bodyText2.color.withOpacity(0.7)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
