import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    );
  }
}