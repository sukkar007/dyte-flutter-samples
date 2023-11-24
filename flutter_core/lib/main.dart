import 'package:flutter_core/constants/colors.dart';
import 'package:flutter_core/di/di.dart';
import 'package:flutter_core/logger.dart';
import 'package:flutter_core/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependecies();
  runApp(ProviderScope(
    observers: [Logger()],
    child: const DyteSampleApp(),
  ));
}

class DyteSampleApp extends StatelessWidget {
  const DyteSampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData.dark();
    return MaterialApp(
      theme: theme.copyWith(
        scaffoldBackgroundColor: DyteColors.background,
        primaryColor: DyteColors.primary,
        colorScheme: theme.colorScheme
            .copyWith(
              secondary: DyteColors.primary,
            )
            .copyWith(background: DyteColors.background),
      ),
      home: const HomePage(),
    );
  }
}
