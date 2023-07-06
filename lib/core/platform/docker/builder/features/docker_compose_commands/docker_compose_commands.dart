import 'package:dockerploy/data/model/docker_compose.dart';

abstract class DockerComposeCommand {
  void up();
  void down();
  void stop();
  void start();
  Future<String> ip({required ServiceProps service});
  Stream<T> logs<T>();
}
