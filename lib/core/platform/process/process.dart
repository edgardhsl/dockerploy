// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Process {
  Future<List<ProcessResponse>> cmd(String cmd);
}

class ProcessResponse {
  String stdOut;
  String stdErr;

  ProcessResponse({
    required this.stdOut,
    required this.stdErr,
  });
}
