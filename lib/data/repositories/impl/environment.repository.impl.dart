import 'package:dockerploy/core/database/isar/isar.impl.dart';
import 'package:dockerploy/data/model/environment.dart';
import 'package:dockerploy/data/repositories/environment.repository.dart';
import 'package:isar/isar.dart';

class EnvironmentRepositoryImpl implements EnvironmentRepository {
  IsarDatabase isar;

  EnvironmentRepositoryImpl(this.isar) {
    init();
  }

  init() async {}

  @override
  Future<Environment> create(Environment environment) async {
    await isar.isar!.writeTxn(() => isar.isar!.environments.put(environment));
    return environment;
  }

  @override
  Future<bool> delete(Environment environment) async {
    await isar.isar!.writeTxn(
        () => isar.isar!.environments.delete(environment.id!.toInt()));
    return true;
  }

  @override
  Future<Environment?> get(String name) {
    return isar.isar!.environments.filter().nameEqualTo(name).findFirst();
  }

  @override
  Future<List<Environment>?> list() {
    return isar.isar!.environments.where().findAll();
  }

  @override
  Future<Environment> update(Environment environment) async {
    await isar.isar!.writeTxn(() => isar.isar!.environments.put(environment));
    return environment;
  }

  @override
  // TODO: implement observable
  Stream<void> get observable => isar.isar!.environments.watchLazy();
/* 
  @override
  Future<Environment> create(Environment environment) async {
    environment.id = await isar.!.add(environment.toJson());

    return environment;
  }

  @override
  Future<bool> delete(Environment environment) async {
    box!.delete(environment);
    return true;
  }

  @override
  Future<Environment> get(String name) async {
    return box!.values.firstWhere((element) => element.name == name);
  }

  @override
  Future<List<Environment>> list() async {
    return box!.values.map((e) => Environment.fromJson(e)).toList();
  }

  @override
  Future<Environment> update(Environment environment) async {
    final index = box!.values
        .toList()
        .indexWhere((element) => element.name == environment.name);
    box!.putAt(index, environment);

    return environment;
  } */
}
