import 'dart:io';

import 'package:dockerploy/core/platform/features/platform_features.dart';
import 'package:dockerploy/core/platform/features/windows/wsl/wsl.dart' as wwsl;
import 'package:dockerploy/core/platform/features/windows/docker/docker.dart'
    as wdocker;

class PlatformFactory {
  PlatformFeature getWSL() {
    switch (Platform.operatingSystem) {
      case "windows":
        return wwsl.WSL();
      default:
        throw "Not implemented";
    }
  }

  PlatformFeature getDocker() {
    switch (Platform.operatingSystem) {
      case "windows":
        return wdocker.Docker();
      default:
        throw "Not implemented";
    }
  }
}
