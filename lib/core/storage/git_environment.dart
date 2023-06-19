import 'dart:convert';

import 'package:dockerploy/core/util/reflector/reflector.dart';

@Reflector()
class GitEnvironment {
  final String user;
  final String token;

  GitEnvironment(
    this.user,
    this.token,
  );

  GitEnvironment copyWith({
    String? user,
    String? token,
  }) {
    return GitEnvironment(
      user ?? this.user,
      token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user,
      'token': token,
    };
  }

  factory GitEnvironment.fromMap(Map<String, dynamic> map) {
    return GitEnvironment(
      map['user'] as String,
      map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GitEnvironment.fromJson(String source) =>
      GitEnvironment.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'GitEnvironment(user: $user, token: $token)';
}
