import 'package:diet_app/ui/viewmodel/authentication/sign_up/components/logo_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoText extends StatelessWidget {
  final viewModel = Get.put(SignUpLogoTextViewModel());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Image(
          image: AssetImage(viewModel.model.assetName),
        ),
      ),
    );
  }
}
