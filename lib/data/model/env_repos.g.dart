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
    r'idBackBranch': PropertySchema(
      id: 0,
      name: r'idBackBranch',
      type: IsarType.string,
    ),
    r'idBackRepository': PropertySchema(
      id: 1,
      name: r'idBackRepository',
      type: IsarType.string,
    ),
    r'idFrontBranch': PropertySchema(
      id: 2,
      name: r'idFrontBranch',
      type: IsarType.string,
    ),
    r'idFrontRepository': PropertySchema(
      id: 3,
      name: r'idFrontRepository',
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
    final value = object.idBackBranch;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idBackRepository;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idFrontBranch;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idFrontRepository;
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
  writer.writeString(offsets[0], object.idBackBranch);
  writer.writeString(offsets[1], object.idBackRepository);
  writer.writeString(offsets[2], object.idFrontBranch);
  writer.writeString(offsets[3], object.idFrontRepository);
}

EnvRepos _envReposDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EnvRepos(
    idBackBranch: reader.readStringOrNull(offsets[0]),
    idBackRepository: reader.readStringOrNull(offsets[1]),
    idFrontBranch: reader.readStringOrNull(offsets[2]),
    idFrontRepository: reader.readStringOrNull(offsets[3]),
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
  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackBranchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idBackBranch',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackBranchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idBackBranch',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackBranchEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idBackBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackBranchGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idBackBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackBranchLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idBackBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackBranchBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idBackBranch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackBranchStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idBackBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackBranchEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idBackBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackBranchContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idBackBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idBackBranchMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idBackBranch',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackBranchIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idBackBranch',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackBranchIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idBackBranch',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idBackRepository',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idBackRepository',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idBackRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idBackRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idBackRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idBackRepository',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idBackRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idBackRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idBackRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idBackRepository',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idBackRepository',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idBackRepositoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idBackRepository',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontBranchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idFrontBranch',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontBranchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idFrontBranch',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontBranchEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idFrontBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontBranchGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idFrontBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontBranchLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idFrontBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontBranchBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idFrontBranch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontBranchStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idFrontBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontBranchEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idFrontBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontBranchContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idFrontBranch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition> idFrontBranchMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idFrontBranch',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontBranchIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idFrontBranch',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontBranchIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idFrontBranch',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idFrontRepository',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idFrontRepository',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idFrontRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idFrontRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idFrontRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idFrontRepository',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idFrontRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idFrontRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idFrontRepository',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idFrontRepository',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idFrontRepository',
        value: '',
      ));
    });
  }

  QueryBuilder<EnvRepos, EnvRepos, QAfterFilterCondition>
      idFrontRepositoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idFrontRepository',
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
      idBackBranch: json['idBackBranch'] as String?,
      idBackRepository: json['idBackRepository'] as String?,
      idFrontBranch: json['idFrontBranch'] as String?,
      idFrontRepository: json['idFrontRepository'] as String?,
    );

Map<String, dynamic> _$EnvReposToJson(EnvRepos instance) => <String, dynamic>{
      'idFrontRepository': instance.idFrontRepository,
      'idFrontBranch': instance.idFrontBranch,
      'idBackRepository': instance.idBackRepository,
      'idBackBranch': instance.idBackBranch,
    };
