import 'package:dockerploy/core/platform/features/platform_features.dart';
import 'package:dockerploy/core/platform/process/impl/process_run.dart';

class WSL implements PlatformFeature {
  @override
  Future<bool> isInstalled() async {
    final r = await ProcessRunner().cmd(
        "powershell.exe (Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux).State");
    return r.contains(
        r.firstWhere((e) => e.stdOut.toLowerCase().contains("enabled")));
  }
}
