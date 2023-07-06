import 'dart:async';

abstract class Process {
  Future<List<ProcessResponse>> cmd(String cmd);
  Stream stream(String cmd);
}

class ProcessResponse {
  String stdOut;
  String stdErr;

  ProcessResponse({
    required this.stdOut,
    required this.stdErr,
  });
}
