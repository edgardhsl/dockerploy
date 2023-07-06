import 'dart:io';

tempDirectoryCreator() {
  switch (Platform.operatingSystem) {
    case "windows":
      return "\\\\wsl\$\\Ubuntu\\tmp";
    case "linux":
      return "\\tmp";
    default:
      throw "Not Implemented";
  }
}
