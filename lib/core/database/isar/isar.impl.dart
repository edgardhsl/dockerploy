import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:dockerploy/data/model/environment.dart';

class IsarDatabase {
  Isar? isar;

  IsarDatabase() {
    initialize();
  }

  Future<Isar?> initialize() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.getInstance()?.isOpen != null) return null;

    isar = await Isar.open(
      [EnvironmentSchema],
      directory: dir.path,
    );

    return isar;
  }
}
