// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:math';

import 'package:dockerploy/core/util/reflector/reflector.dart';

@Reflector()
class Environment {
  final String protocol;
  final String apiroot;
  final String host;
  final String encryptType;
  final String? saltMD5;
  final int port;
  final int randomPort = Random().nextInt(1999) + 1000;
  final String context;

  final String frontBranch;

  Environment(
      {required this.protocol,
      required this.apiroot,
      required this.host,
      required this.encryptType,
      required this.port,
      required this.context,
      required this.frontBranch,
      this.saltMD5});

  Environment copyWith({
    String? protocol,
    String? apiroot,
    String? host,
    String? encryptType,
    String? saltMD5,
    int? port,
    int? randomPort,
    String? context,
    String? frontBranch,
  }) {
    return Environment(
      protocol: protocol ?? this.protocol,
      apiroot: apiroot ?? this.apiroot,
      host: host ?? this.host,
      encryptType: encryptType ?? this.encryptType,
      saltMD5: saltMD5 ?? this.saltMD5,
      port: port ?? this.port,
      context: context ?? this.context,
      frontBranch: frontBranch ?? this.frontBranch,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': protocol,
      'apiroot': apiroot,
      'host': host,
      'encryptType': encryptType,
      'saltMD5': saltMD5,
      'port': port,
      'randomPort': randomPort,
      'context': context,
      'frontBranch': frontBranch,
    };
  }

  factory Environment.fromMap(Map<String, dynamic> map) {
    return Environment(
      protocol: map['protocol'] as String,
      apiroot: map['apiroot'] as String,
      host: map['host'] as String,
      encryptType: map['encryptType'] as String,
      saltMD5: map['saltMD5'] != null ? map['saltMD5'] as String : null,
      port: map['port'] as int,
      context: map['context'] as String,
      frontBranch: map['frontBranch'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Environment.fromJson(String source) =>
      Environment.fromMap(json.decode(source) as Map<String, dynamic>);

  String getFrontEndUrl() {
    return "$protocol://$host:$randomPort";
  }

  String getBackEndUrl() {
    return "$protocol://$host:$port/$context";
  }
}
