import 'package:dockerploy/core/theme/theme.dark.dart';
import 'package:dockerploy/modules/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'main.reflectable.dart';
import 'package:dockerploy/core/theme/theme.common.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeReflectable();
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Dockerploy',
      themeMode: ThemeMode.dark,
      theme: themeCommon,
      darkTheme: themeDark,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}
