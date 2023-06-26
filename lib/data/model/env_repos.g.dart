// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_repos.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const EnvReposSchema = Schema(
  name: r'EnvRepos',
  id: -5289350265363785876,
  properties: {
    r'idBackend': PropertySchema(
      id: 0,
      name: r'idBackend',
      type: IsarType.string,
    ),
    r'idBranchBackend': PropertySchema(
      id: 1,
      name: r'idBranchBackend',
      type: IsarType.string,
    ),
    r'idBranchFrontend': PropertySchema(
      id: 2,
      name: r'idBranchFrontend',
      type: IsarType.string,
    ),
    r'idFrontend': PropertySchema(
      id: 3,
      name: r'idFrontend',
      type: IsarType.string,
    )
  },
  estimateSize: _envReposEstimateSize,
  serialize: _envReposSerialize,
  deserialize: _envReposDeserialize,
  deserializeProp: _envReposDeserializeProp,
);

int _envReposEstimateSize(
  EnvRepos object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.idBackend;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idBranchBackend;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idBranchFrontend;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idFrontend;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _envReposSerialize(
  EnvRepos object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.idBackend);
  writer.writeString(offsets[1], object.idBranchBackend);
  writer.writeString(offsets[2], object.idBranchFrontend);
  writer.writeString(offsets[3], object.idFrontend);
}

EnvRepos _envReposDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EnvRepos(
    idBackend: reader.readStringOrNull(offsets[0]),
    idBranchBackend: reader.readStringOrNull(offsets[1]),
    idBranchFrontend: reader.readStringOrNull(offsets[2]),
    idFrontend: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _envReposDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension EnvReposQueryFilter
    on QueryBuilder<EnvRepos, EnvRepos, QFilterCondition> {
  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idBackend',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idBackend',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idBackend',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idBackend',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackendIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idBackend',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackendIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idBackend',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idBranchBackend',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idBranchBackend',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idBranchBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idBranchBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idBranchBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idBranchBackend',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idBranchBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idBranchBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idBranchBackend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idBranchBackend',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idBranchBackend',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchBackendIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idBranchBackend',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idBranchFrontend',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idBranchFrontend',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idBranchFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idBranchFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idBranchFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idBranchFrontend',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idBranchFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idBranchFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idBranchFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idBranchFrontend',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idBranchFrontend',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBranchFrontendIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idBranchFrontend',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontendIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idFrontend',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontendIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idFrontend',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontendEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontendGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontendLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontendBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idFrontend',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontendStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontendEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontendContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idFrontend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontendMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idFrontend',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontendIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idFrontend',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontendIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idFrontend',
        value: '',
      ));
    });
  }
}

extension EnvReposQueryObject
    on QueryBuilder<EnvRepos, EnvRepos, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnvRepos _$EnvReposFromJson(Map<String, dynamic> json) => EnvRepos(
      idBranchFrontend: json['idBranchFrontend'] as String?,
      idBranchBackend: json['idBranchBackend'] as String?,
      idFrontend: json['idFrontend'] as String?,
      idBackend: json['idBackend'] as String?,
    );

Map<String, dynamic> _$EnvReposToJson(EnvRepos instance) => <String, dynamic>{
      'idFrontend': instance.idFrontend,
      'idBackend': instance.idBackend,
      'idBranchFrontend': instance.idBranchFrontend,
      'idBranchBackend': instance.idBranchBackend,
    };
