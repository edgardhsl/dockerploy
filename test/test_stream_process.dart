import 'package:dockerploy/core/platform/process/impl/process_run.dart';

main() {
  ProcessRunner().stream("wsl bash -c 'docker ps'").listen((event) {
    print(event);
  });
}
