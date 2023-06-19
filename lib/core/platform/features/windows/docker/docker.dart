import 'package:dockerploy/core/platform/features/platform_features.dart';
import 'package:dockerploy/core/platform/process/impl/process_run.dart';

class Docker implements PlatformFeature {
  @override
  Future<bool> isInstalled() async {
    final r =
        await ProcessRunner().cmd("wsl bash -c 'systemctl is-active docker'");
    return r.contains(r.firstWhere(
        (e) => e.stdOut.toLowerCase().contains("active"),
        orElse: () => throw "Docker is not running."));
  }
}
