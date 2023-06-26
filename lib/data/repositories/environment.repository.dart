import 'package:dockerploy/data/model/environment.dart';

abstract class EnvironmentRepository {
  Stream<void> get observable;

  Future<Environment?> get(String name);
  Future<List<Environment>?> list();
  Future<Environment> create(Environment environment);
  Future<Environment> update(Environment environment);
  Future<bool> delete(Environment environment);
}
