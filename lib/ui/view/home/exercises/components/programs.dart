import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/routes.dart';
import 'package:diet_app/core/widget/view_all_widget.dart';
import 'package:diet_app/ui/viewmodel/home/exercises/components/programs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Programs extends StatelessWidget {
  final viewModel = Get.put(ProgramsViewModel());

  @override
  Widget build(BuildContext context) {
    return ViewAllWidget(title: 'programs'.tr, onClick: null, child: program_lists(context));
  }

  Widget program_lists(context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      clipBehavior: Clip.none,
      children: List.generate(13, (index) {
        return InkWell(
          onTap: (){
            Get.toNamed(Routes.exercise_details);
          },
          child: Card(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                        AssetImage('assets/images/sign_up/background.webp'),
                      )),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Opacity(
                    opacity: 0.7,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      height: 25,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text('yoga'.tr, style: Theme.of(context).textTheme.bodyText2.copyWith(color: AppColors.primarySwatch),),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
