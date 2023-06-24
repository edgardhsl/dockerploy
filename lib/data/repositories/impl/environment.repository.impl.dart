import 'package:dockerploy/core/database/isar/isar.impl.dart';
import 'package:dockerploy/data/model/environment.dart';
import 'package:dockerploy/data/repositories/environment.repository.dart';

class EnvironmentRepositoryImpl implements EnvironmentRepository {
  EnvironmentRepositoryImpl(IsarDatabase isar) {
    init();
  }

  init() async {}

  @override
  Future<Environment> create(Environment environment) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(Environment environment) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Environment> get(String name) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<Environment>> list() {
    // TODO: implement list
    throw UnimplementedError();
  }

  @override
  Future<Environment> update(Environment environment) {
    // TODO: implement update
    throw UnimplementedError();
  }
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
