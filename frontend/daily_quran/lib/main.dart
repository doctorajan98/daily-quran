import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Constants import
import 'package:daily_quran/core/constants/app_constant.dart';

// Router import
import 'package:daily_quran/app/router/AppRouter.dart';

// BloC imports
import 'package:daily_quran/features/tasbih/presentation/bloc/tasbih_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TasbihBloc()),
      ],
      child: const DailyQuranApp(),
    ),
  );
}

class DailyQuranApp extends StatelessWidget {
  const DailyQuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: AppConstants.primaryDark,
          secondary: AppConstants.primaryMedium,
          surface: AppConstants.primaryLight,
          error: AppConstants.errorColor,
          onSurface: AppConstants.textPrimary,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: AppConstants.primaryMedium,
          secondary: AppConstants.primaryDark,
          surface: AppConstants.primaryDarkest,
          error: AppConstants.errorColor,
          onSurface: AppConstants.textLight,
        ),
        useMaterial3: true,
      ),
    );
  }
}