import 'package:dockerploy/core/database/isar/isar.impl.dart';
import 'package:dockerploy/core/storage/impl/shared_preferences/shared_preferences.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:dockerploy/data/repositories/environment.repository.dart';
import 'package:dockerploy/data/repositories/github_repo.repository.dart';
import 'package:dockerploy/data/repositories/impl/environment.repository.impl.dart';
import 'package:dockerploy/data/repositories/impl/github_repo.repository.impl.dart';
import 'package:dockerploy/modules/configuration/Configuration.dart';
import 'package:dockerploy/modules/splash/splash_screen.dart';
import 'package:dockerploy/modules/start_page/start_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:isar/isar.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<Storage>((i) => SharedPreferences()),
        Bind.singleton<GithubRepoRepository>(
            (i) => GithubRepoRepositoryImpl(storage: i())),
        Bind.singleton<IsarDatabase>((i) => IsarDatabase()),
        Bind.singleton<EnvironmentRepository>(
            (i) => EnvironmentRepositoryImpl(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/settings',
            child: (context, args) => const Configuration()),
        ChildRoute('/start', child: (context, args) => const StartPage()),
        ChildRoute('/', child: (context, args) => const SplashScreen())
      ];
}
