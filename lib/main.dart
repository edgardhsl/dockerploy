import 'package:dockerploy/modules/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.reflectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  /* 

  if (Platform.isWindows) {
    setWindowMaxSize(const Size(1024, 768));
    setWindowMinSize(const Size(512, 384));
  } */

  initializeReflectable();
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp.router(
      title: 'Dockerploy',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
              bodyMedium: const TextStyle(color: Colors.white),
              bodySmall: const TextStyle(color: Colors.white),
              bodyLarge: const TextStyle(color: Colors.white)),
          inputDecorationTheme:
              const InputDecorationTheme(border: OutlineInputBorder())),
      darkTheme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
              bodyMedium: const TextStyle(color: Colors.white),
              bodySmall: const TextStyle(color: Colors.white),
              bodyLarge: const TextStyle(color: Colors.white)),
          inputDecorationTheme:
              const InputDecorationTheme(border: OutlineInputBorder())),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}
