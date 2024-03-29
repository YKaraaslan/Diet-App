import 'package:diet_app/core/constant/routes.dart';
import 'package:diet_app/ui/view/authentication/login/login.dart';
import 'package:diet_app/ui/view/authentication/sign_up/sign_up.dart';
import 'package:diet_app/ui/view/home/home_main.dart';
import 'package:diet_app/ui/view/home/homepage/pages/comments/comments.dart';
import 'package:diet_app/ui/view/home/profile/pages/current_diet/current_diet.dart';
import 'package:diet_app/ui/view/home/profile/pages/my_posts/my_posts.dart';
import 'package:diet_app/ui/view/home_drawer/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:diet_app/core/init/language/language_manager.dart';

import 'core/init/theme/dark_theme.dart';
import 'core/init/theme/light_theme.dart';
import 'ui/view/authentication/on_board/on_board.dart';
import 'ui/view/home/exercises/pages/exercise_details.dart';
import 'ui/view/home/exercises/pages/exercise_details_view.dart';
import 'ui/view/home/homepage/pages/likes_and_dislikes/likes_and_dislikes.dart';
import 'ui/view/home/homepage/pages/stories/stories.dart';
import 'ui/view/home/messages/message_ui.dart';
import 'ui/view/home/profile/pages/edit_profile/edit_profile.dart';
import 'ui/view/home/profile/pages/settings/settings.dart';
import 'ui/view/home_drawer/my_analysis/my_analysis.dart';
import 'ui/view/home_drawer/my_diet_lists/my_diet_lists.dart';
import 'ui/view/home_drawer/my_payment_history/my_payment_history.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: LanguageManager.locale,
      fallbackLocale: LanguageManager.fallbackLocale,
      translations: LanguageManager(),
      initialRoute: Routes.home_main,
      routes: {
        Routes.main: (context) => const Main(),
        Routes.on_board: (context) => const OnBoard(),
        Routes.login: (context) => const Login(),
        Routes.sign_up: (context) => const SignUp(),
        Routes.home_main: (context) => const HomeMain(),
        Routes.exercise_details: (context) => const ExerciseDetails(),
        Routes.exercise_details_view: (context) => const ExerciseDetailsView(),
        Routes.message_ui: (context) => const MessageUI(),
        Routes.current_diet: (context) => const CurrentDiet(),
        Routes.my_analysis: (context) => const MyAnalysis(),
        Routes.settings: (context) => const Settings(),
        Routes.my_diet_lists: (context) => const MyDietLists(),
        Routes.payment_history: (context) => const MyPaymentHistory(),
        Routes.notifications: (context) => const Notifications(),
        Routes.my_posts: (context) => const MyPosts(),
        Routes.edit_profile: (context) => const EditProfile(),
        Routes.comments: (context) => const Comments(),
        Routes.likes_and_dislikes: (context) => const LikesAndDislikes(),
        Routes.stories: (context) => const Stories(),
      },
      themeMode: ThemeMode.light,
      darkTheme: appDarkTheme(context),
      theme: appLightTheme(context),
    );
  }
}

class Main extends StatelessWidget {
  const Main();

  @override
  Widget build(BuildContext context) {
    return const OnBoard();
  }
}
