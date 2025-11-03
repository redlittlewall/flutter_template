// lib/app/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'package:generic_template/app/theme/app_colors.dart';

// ======================================
// MARCA A (Ex: "Tech Corp")
// ======================================

const _brandAColorsLight = AppColors(
  primary: Color(0xFF0052D4),
  onPrimary: Colors.white,
  secondary: Color(0xFF03A9F4),
  background: Color(0xFFF0F2F5),
  surface: Colors.white,
  success: Color(0xFF388E3C),
  error: Color(0xFFD32F2F),
  textDefault: Color(0xFF1F2937),
  textInverse: Colors.white,
);

const _brandAColorsDark = AppColors(
  primary: Color(0xFF42A5F5),
  onPrimary: Color(0xFF0D1117),
  secondary: Color(0xFF03A9F4),
  background: Color(0xFF0D1117),
  surface: Color(0xFF161B22),
  success: Color(0xFF66BB6A),
  error: Color(0xFFE57373),
  textDefault: Color(0xFFE6EDF3),
  textInverse: Color(0xFF0D1117),
);

// Tema LIGHT da MARCA A
final brandALightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: _brandAColorsLight.primary,
    brightness: Brightness.light,
  ),
  extensions: <ThemeExtension<dynamic>>[
    _brandAColorsLight,
    // TODO: Adicionar AppSpacing, AppTypography, etc.
  ],
);

// Tema DARK da MARCA A
final brandADarkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: _brandAColorsDark.primary,
    brightness: Brightness.dark,
    background: _brandAColorsDark.background,
    surface: _brandAColorsDark.surface,
  ),
  extensions: <ThemeExtension<dynamic>>[
    _brandAColorsDark,
    // TODO: Adicionar AppSpacing, AppTypography, etc.
  ],
);

// ======================================
// MARCA B (Ex: "Eco Green")
// ======================================

const _brandBColorsLight = AppColors(
  primary: Color(0xFF4CAF50),
  onPrimary: Colors.white,
  secondary: Color(0xFF8BC34A),
  background: Color(0xFFF1F8E9),
  surface: Colors.white,
  success: Color(0xFF4CAF50),
  error: Color(0xFFE53935),
  textDefault: Color(0xFF2E7D32),
  textInverse: Colors.white,
);

// (Opcional: Adicionar _brandBColorsDark e brandBDarkTheme se necessário)

final brandBLightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: _brandBColorsLight.primary,
    brightness: Brightness.light,
  ),
  extensions: <ThemeExtension<dynamic>>[_brandBColorsLight],
);
