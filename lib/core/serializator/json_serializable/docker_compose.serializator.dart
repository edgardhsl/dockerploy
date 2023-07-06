class DockerComposeSerializator {
  static semiColonKeyValuePair(List<Map<String, String>>? list) {
    return list?.map((e) => '${e.keys.first}:${e.values.first}').toList() ?? [];
  }

  static equalColonKeyValuePair(List<Map<String, String>>? list) {
    return list?.map((e) => '${e.keys.first}=${e.values.first}').toList() ?? [];
  }
}
