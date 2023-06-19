import 'dart:io';

import 'package:dockerploy/core/platform/process/process.dart';
import 'package:process_run/shell.dart';

class ProcessRunner implements Process {
  @override
  Future<List<ProcessResponse>> cmd(String cmd) async {
    List<ProcessResult> runner = await Shell().run(cmd);

    return runner
        .map((value) => ProcessResponse(
            stdOut: value.stdout as String, stdErr: value.stderr as String))
        .toList();
  }
}
