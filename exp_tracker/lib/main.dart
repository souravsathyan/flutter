import 'package:flutter/material.dart';
import 'package:exp_tracker/widgets/expenses.dart';

// var kColorScheme = ColorScheme.fromSeed(
//   seedColor: const Color.fromARGB(255, 96, 59, 181),
// );

final lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  surface: const Color(0xFFFFFFFF),
  onSurface: const Color(0xFF0F172A),
  primary: const Color(0xFF3B82F6),
  onPrimary: const Color(0xFFF0F9FF),
  secondary: const Color(0xFFF1F5F9),
  onSecondary: const Color(0xFF1E293B),
  error: const Color(0xFFEF4444),
  onError: const Color(0xFFF0F9FF),
  surfaceContainerHighest: const Color(0xFFE2E8F0),
  onSurfaceVariant: const Color(0xFF64748B),
  outline: const Color(0xFFE2E8F0),
  shadow: Colors.black12,
);

final darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  surface: const Color(0xFF0F172A),
  onSurface: const Color(0xFFF0F9FF),
  primaryContainer: const Color(0xFF1D4ED8), // 💡 Add this
  onPrimaryContainer: const Color(0xFFF0F9FF),
  primary: const Color(0xFF2563EB),
  onPrimary: const Color(0xFF1E293B),
  secondary: const Color(0xFF1E293B),
  onSecondary: const Color(0xFFF0F9FF),
  error: const Color(0xFF7F1D1D),
  onError: const Color(0xFFF0F9FF),
  surfaceContainerHighest: const Color(0xFF1E293B),
  onSurfaceVariant: const Color(0xFFA5B4FC),
  outline: const Color(0xFF1E293B),
  shadow: Colors.black26,
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: darkColorScheme,
        scaffoldBackgroundColor: darkColorScheme.surface,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: darkColorScheme.primaryContainer,
          foregroundColor: darkColorScheme.onPrimaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: darkColorScheme.secondary,
          elevation: 12,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: darkColorScheme.primaryContainer,
            foregroundColor: darkColorScheme.onPrimaryContainer,
            elevation: 5,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: darkColorScheme.onSecondary,
          ),
          bodyMedium: TextStyle(color: darkColorScheme.onPrimaryContainer),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: lightColorScheme,
        scaffoldBackgroundColor: lightColorScheme.surface,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: lightColorScheme.primary,
          foregroundColor: lightColorScheme.onPrimary,
        ),
        cardTheme: CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: lightColorScheme.secondary,
          elevation: 12,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: lightColorScheme.primaryContainer,
            foregroundColor: lightColorScheme.onPrimaryContainer,
            elevation: 5,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: lightColorScheme.onSecondary,
          ),
          bodyMedium: TextStyle(color: lightColorScheme.onSecondary),
        ),
      ),
      home: Expenses(),
      themeMode: ThemeMode.system,
    ),
  );
}
