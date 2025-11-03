import 'package:flutter/material.dart';
import 'package:generc_template/app/theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.text, this.onPressed});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    // Acessa os tokens de cor da marca atual via helper
    final colors = AppColors.of(context);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: colors.primary, // Usa o token PRIMÁRIO
        foregroundColor: colors.onPrimary, // Usa o token ON_PRIMARY
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
