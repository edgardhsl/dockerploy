abstract class PlatformFeature {
  Future<bool> isInstalled();
}

enum PlatformState { loading, disabled, enabled }
