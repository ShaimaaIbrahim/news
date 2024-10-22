import 'package:flutter/widgets.dart';
import 'package:news_app_tempelate/app/app.dart';
import 'package:news_app_tempelate/home/home.dart';
import 'package:news_app_tempelate/onboarding/onboarding.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.onboardingRequired:
      return [OnboardingPage.page()];
    case AppStatus.unauthenticated:
    case AppStatus.authenticated:
      return [HomePage.page()];
  }
}
