import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:generic_template/app/theme/app_colors.dart';
import 'package:generic_template/app/theme/app_theme.dart';
import 'package:generic_template/shared/presentation/widgets/primary_button.dart';

void main() {
  // TODO: Adicionar aqui inicialização de Flavors, Feature Flags, etc. (Fase 2)
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: Substituir por um Provider que seleciona a marca dinamicamente
    final currentBrandThemeLight = brandALightTheme;
    final currentBrandThemeDark = brandADarkTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Conecta os temas (Light/Dark) da MARCA A
      theme: currentBrandThemeLight,
      darkTheme: currentBrandThemeDark,
      themeMode: ThemeMode.system, // Usa o tema do sistema (Light/Dark)
      // home provisório para testar o theming
      home: const ThemingTestScreen(),
    );

    /* // NOTA: Na Fase 1.3, substituiremos 'home' por 'routerConfig' do GoRouter
    return MaterialApp.router(
      routerConfig: ref.watch(appRouterProvider), // Virá na Fase 1.3
      theme: currentBrandThemeLight,
      darkTheme: currentBrandThemeDark,
      themeMode: ThemeMode.system,
    );
    */
  }
}

// Tela de teste para validar o ThemeExtension
class ThemingTestScreen extends StatelessWidget {
  const ThemingTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Acessa os tokens de cor da marca atual (A ou B)
    // Se o tema do sistema for DARK, ele pegará os tokens de _brandAColorsDark
    // Se for LIGHT, pegará _brandAColorsLight
    final colors = AppColors.of(context);

    return Scaffold(
      backgroundColor: colors.background, // Usa o token de background
      appBar: AppBar(
        backgroundColor: colors.surface,
        title: Text(
          'Teste de Theming',
          style: TextStyle(color: colors.textDefault),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cor Primária',
              style: TextStyle(color: colors.primary, fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              'Cor de Sucesso',
              style: TextStyle(color: colors.success, fontSize: 24),
            ),
            const SizedBox(height: 20),
            // Este widget (a ser criado) também usará os tokens internamente
            const PrimaryButton(text: 'Botão (Shared Widget)'),
          ],
        ),
      ),
    );
  }
}
