import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/routing/app_routes.dart';
import 'package:nft_marketplace/features/main_layout/views/main_layout_view.dart';
import 'package:nft_marketplace/features/onboarding/views/onboarding_view.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.onboarding: (context) => const OnboardingView(),
    AppRoutes.mainLayout: (context) => const MainLayoutView(),
  };
}
