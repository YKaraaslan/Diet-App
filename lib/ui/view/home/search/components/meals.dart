import 'package:diet_app/core/widget/view_all_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Meals extends StatelessWidget {
  const Meals();

  @override
  Widget build(BuildContext context) {
    return ViewAllWidget(
      title: 'diets'.tr,
      onClick: null,
      child: const _Diets(),
    );
  }
}

class _Diets extends StatelessWidget {
  const _Diets();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {},
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image:
                          AssetImage('assets/images/sign_up/background.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
