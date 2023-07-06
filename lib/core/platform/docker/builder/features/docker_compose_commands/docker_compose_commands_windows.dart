import 'package:dockerploy/core/platform/docker/builder/features/docker_compose_commands/docker_compose_commands.dart';
import 'package:dockerploy/core/platform/process/impl/process_run.dart';
import 'package:dockerploy/data/model/docker_compose.dart';

class DockerComposeCommandsWindows implements DockerComposeCommand {
  ProcessRunner runner = ProcessRunner();

  DockerComposeCommandsWindows();

  @override
  up({dir}) {
    runner.stream("wsl bash -c 'docker compose ${dir ? '-f $dir' : ''} up'");
  }

  @override
  Future<String> ip({required ServiceProps service}) async {
    final result = await runner.cmd(
        "wsl bash -c 'docker compose --format '{{ .NetworkSettings.IPAddress }}' ${service.containerId}'");
    return result.first.stdOut;
  }

  @override
  void down() {
    // TODO: implement down
  }

  @override
  Stream<T> logs<T>() {
    // TODO: implement logs
    throw UnimplementedError();
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void stop() {
    // TODO: implement stop
  }
}
