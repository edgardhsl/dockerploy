import 'dart:convert';

import 'package:dockerploy/core/util/reflector/reflector.dart';

@Reflector()
class Environment {
  final String user;
  final String token;

  Environment(
    this.user,
    this.token,
  );

  Environment copyWith({
    String? user,
    String? token,
  }) {
    return Environment(
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

  factory Environment.fromMap(Map<String, dynamic> map) {
    return Environment(
      map['user'] as String,
      map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Environment.fromJson(String source) =>
      Environment.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'GitEnvironment(user: $user, token: $token)';
}
