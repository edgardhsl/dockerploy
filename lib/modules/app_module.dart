import 'package:dockerploy/core/storage/impl/shared_preferences/shared_preferences.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:dockerploy/modules/configuration/Configuration.dart';
import 'package:dockerploy/modules/splash/splash_screen.dart';
import 'package:dockerploy/modules/start_page/start_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [Bind.singleton<Storage>((i) => SharedPreferences())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/configuration',
            child: (context, args) => const Configuration()),
        ChildRoute('/start', child: (context, args) => StartPage()),
        ChildRoute('/', child: (context, args) => const SplashScreen())
      ];
}
