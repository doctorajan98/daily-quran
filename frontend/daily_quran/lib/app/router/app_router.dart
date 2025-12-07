import 'package:go_router/go_router.dart';

// Screens imports
import 'package:daily_quran/welcome_page.dart';
import 'package:daily_quran/features/tasbih/presentation/pages/tasbih_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/welcomePage',
    routes: [
      GoRoute(
        name: 'welcomePage',
        path: '/welcomePage',
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        name: 'tasbihPage',
        path: '/tasbihPage',
        builder: (context, state) => const TasbihPage(),
      ),
    ]
  );
}