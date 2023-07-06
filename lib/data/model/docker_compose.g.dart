// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docker_compose.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DockerComposeSchema = Schema(
  name: r'DockerCompose',
  id: -6243871914790247687,
  properties: {
    r'version': PropertySchema(
      id: 0,
      name: r'version',
      type: IsarType.string,
    )
  },
  estimateSize: _dockerComposeEstimateSize,
  serialize: _dockerComposeSerialize,
  deserialize: _dockerComposeDeserialize,
  deserializeProp: _dockerComposeDeserializeProp,
);

int _dockerComposeEstimateSize(
  DockerCompose object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.version.length * 3;
  return bytesCount;
}

void _dockerComposeSerialize(
  DockerCompose object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.version);
}

DockerCompose _dockerComposeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DockerCompose(
    version: reader.readStringOrNull(offsets[0]) ?? "3",
  );
  return object;
}

P _dockerComposeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? "3") as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DockerComposeQueryFilter
    on QueryBuilder<DockerCompose, DockerCompose, QFilterCondition> {
  QueryBuilder<DockerCompose, DockerCompose, QAfterFilterCondition>
      versionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DockerCompose, DockerCompose, QAfterFilterCondition>
      versionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DockerCompose, DockerCompose, QAfterFilterCondition>
      versionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DockerCompose, DockerCompose, QAfterFilterCondition>
      versionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DockerCompose, DockerCompose, QAfterFilterCondition>
      versionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DockerCompose, DockerCompose, QAfterFilterCondition>
      versionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DockerCompose, DockerCompose, QAfterFilterCondition>
      versionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DockerCompose, DockerCompose, QAfterFilterCondition>
      versionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'version',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DockerCompose, DockerCompose, QAfterFilterCondition>
      versionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: '',
      ));
    });
  }

  QueryBuilder<DockerCompose, DockerCompose, QAfterFilterCondition>
      versionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'version',
        value: '',
      ));
    });
  }
}

extension DockerComposeQueryObject
    on QueryBuilder<DockerCompose, DockerCompose, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DockerCompose _$DockerComposeFromJson(Map<String, dynamic> json) =>
    DockerCompose(
      services: json['services'] == null
          ? null
          : Service.fromJson(json['services'] as Map<String, dynamic>),
      version: json['version'] as String? ?? "3",
    );

Map<String, dynamic> _$DockerComposeToJson(DockerCompose instance) {
  final val = <String, dynamic>{
    'version': instance.version,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('services', instance.services?.toJson());
  return val;
}

Service _$ServiceFromJson(Map<String, dynamic> json) => Service(
      frontend: ServiceProps.fromJson(json['frontend'] as Map<String, dynamic>),
      backend: ServiceProps.fromJson(json['backend'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      'frontend': instance.frontend.toJson(),
      'backend': instance.backend.toJson(),
    };

ServiceProps _$ServicePropsFromJson(Map<String, dynamic> json) => ServiceProps(
      image: json['image'] as String?,
      build: json['build'] == null
          ? null
          : Build.fromJson(json['build'] as Map<String, dynamic>),
      volumes: (json['volumes'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
      environments: (json['environments'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
    )..containerId = json['containerId'] as String?;

Map<String, dynamic> _$ServicePropsToJson(ServiceProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('containerId', instance.containerId);
  writeNotNull('image', instance.image);
  writeNotNull('build', instance.build?.toJson());
  writeNotNull('volumes', instance.volumes);
  writeNotNull('ports', instance.ports);
  writeNotNull('environments', instance.environments);
  return val;
}

Build _$BuildFromJson(Map<String, dynamic> json) => Build(
      context: json['context'] as String,
      args: (json['args'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
    );

Map<String, dynamic> _$BuildToJson(Build instance) {
  final val = <String, dynamic>{
    'context': instance.context,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'args', DockerComposeSerializator.equalColonKeyValuePair(instance.args));
  return val;
}
