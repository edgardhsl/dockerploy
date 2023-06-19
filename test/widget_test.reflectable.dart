// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import 'dart:core';
import 'package:dockerploy/core/storage/git_environment.dart' as prefix1;
import 'package:dockerploy/core/util/reflector/reflector.dart' as prefix0;

// ignore_for_file: camel_case_types
// ignore_for_file: implementation_imports
// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Reflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'GitEnvironment',
            r'.GitEnvironment',
            134217735,
            0,
            const prefix0.Reflector(),
            const <int>[0, 1, 2, 3, 4, 5, 8, 9, 10],
            const <int>[11, 5, 12, 13, 14, 2, 3, 4, 6, 7],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => (user, token) =>
                  b ? prefix1.GitEnvironment(user, token) : null,
              r'fromMap': (bool b) =>
                  (map) => b ? prefix1.GitEnvironment.fromMap(map) : null,
              r'fromJson': (bool b) =>
                  (source) => b ? prefix1.GitEnvironment.fromJson(source) : null
            },
            0,
            0,
            const <int>[],
            const <Object>[const prefix0.Reflector()],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(r'user', 134349829, 0, const prefix0.Reflector(),
            -1, 1, 1, const <int>[], const []),
        r.VariableMirrorImpl(r'token', 134349829, 0, const prefix0.Reflector(),
            -1, 1, 1, const <int>[], const []),
        r.MethodMirrorImpl(r'copyWith', 2097154, 0, 0, 0, 0, const <int>[],
            const <int>[0, 1], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'toMap', 35651586, 0, -1, 2, 3, null, const <int>[],
            const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'toJson', 2097154, 0, -1, 1, 1, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'toString', 2097154, 0, -1, 1, 1, const <int>[],
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 0, 6),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 1, 7),
        r.MethodMirrorImpl(r'', 0, 0, -1, 0, 0, const <int>[],
            const <int>[2, 3], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'fromMap', 1, 0, -1, 0, 0, const <int>[],
            const <int>[4], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'fromJson', 1, 0, -1, 0, 0, const <int>[],
            const <int>[5], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'==', 2097154, -1, -1, 4, 4, const <int>[],
            const <int>[6], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'noSuchMethod', 524290, -1, -1, -1, -1,
            const <int>[], const <int>[7], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'hashCode', 2097155, -1, -1, 5, 5, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'runtimeType', 2097155, -1, -1, 6, 6, const <int>[],
            const <int>[], const prefix0.Reflector(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(r'user', 67252230, 2, const prefix0.Reflector(),
            -1, 7, 7, const <int>[], const [], null, #user),
        r.ParameterMirrorImpl(r'token', 67252230, 2, const prefix0.Reflector(),
            -1, 7, 7, const <int>[], const [], null, #token),
        r.ParameterMirrorImpl(r'user', 134349830, 8, const prefix0.Reflector(),
            -1, 1, 1, const <int>[], const [], null, null),
        r.ParameterMirrorImpl(r'token', 134349830, 8, const prefix0.Reflector(),
            -1, 1, 1, const <int>[], const [], null, null),
        r.ParameterMirrorImpl(r'map', 151126022, 9, const prefix0.Reflector(),
            -1, 2, 3, null, const [], null, null),
        r.ParameterMirrorImpl(
            r'source',
            134348806,
            10,
            const prefix0.Reflector(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'other',
            134348806,
            11,
            const prefix0.Reflector(),
            -1,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'invocation',
            134348806,
            12,
            const prefix0.Reflector(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null)
      ],
      <Type>[
        prefix1.GitEnvironment,
        String,
        const m.TypeValue<Map<String, dynamic>>().type,
        Map,
        bool,
        int,
        Type,
        String,
        Object,
        Invocation
      ],
      1,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'copyWith': (dynamic instance) => instance.copyWith,
        r'toMap': (dynamic instance) => instance.toMap,
        r'toJson': (dynamic instance) => instance.toJson,
        r'user': (dynamic instance) => instance.user,
        r'token': (dynamic instance) => instance.token
      },
      {},
      <m.LibraryMirror>[
        r.LibraryMirrorImpl(
            r'',
            Uri.parse('package:dockerploy/core/storage/git_environment.dart'),
            const prefix0.Reflector(),
            const <int>[],
            {},
            {},
            const [],
            null)
      ],
      [])
};

const _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
