import 'package:diet_app/ui/viewmodel/authentication/on_board/components/diet_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DietPage extends StatelessWidget {
  const DietPage();

  @override
  Widget build(BuildContext context) {
    return Get.put(DietPageViewModel()).onBoardBase();
  }
}
