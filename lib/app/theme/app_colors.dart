import 'package:flutter/material.dart';

// 1. Definição do Token (Contrato)
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.background,
    required this.surface,
    required this.success,
    required this.error,
    required this.textDefault,
    required this.textInverse,
  });

  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color background;
  final Color surface; // Cor de "cartões", "modais"
  final Color success;
  final Color error;
  final Color textDefault; // Cor de texto principal (sobre 'background')
  final Color textInverse; // Cor de texto clara (sobre 'primary')

  // 2. Método copyWith (Obrigatório)
  @override
  AppColors copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? background,
    Color? surface,
    Color? success,
    Color? error,
    Color? textDefault,
    Color? textInverse,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      success: success ?? this.success,
      error: error ?? this.error,
      textDefault: textDefault ?? this.textDefault,
      textInverse: textInverse ?? this.textInverse,
    );
  }

  // 3. Método lerp (Interpolação de temas, obrigatório)
  @override
  AppColors lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      textDefault: Color.lerp(textDefault, other.textDefault, t)!,
      textInverse: Color.lerp(textInverse, other.textInverse, t)!,
    );
  }

  // Helper estático para fácil acesso (Opcional, mas útil)
  static AppColors of(BuildContext context) {
    return Theme.of(context).extension<AppColors>()!;
  }
}
