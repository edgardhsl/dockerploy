// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEnvironmentCollection on Isar {
  IsarCollection<Environment> get environments => this.collection();
}

const EnvironmentSchema = CollectionSchema(
  name: r'Environment',
  id: -7344354649279055731,
  properties: {
    r'apiroot': PropertySchema(
      id: 0,
      name: r'apiroot',
      type: IsarType.string,
    ),
    r'backendPort': PropertySchema(
      id: 1,
      name: r'backendPort',
      type: IsarType.long,
    ),
    r'context': PropertySchema(
      id: 2,
      name: r'context',
      type: IsarType.string,
    ),
    r'encryptType': PropertySchema(
      id: 3,
      name: r'encryptType',
      type: IsarType.string,
    ),
    r'frontendPort': PropertySchema(
      id: 4,
      name: r'frontendPort',
      type: IsarType.long,
    ),
    r'host': PropertySchema(
      id: 5,
      name: r'host',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'protocol': PropertySchema(
      id: 7,
      name: r'protocol',
      type: IsarType.string,
    ),
    r'repositories': PropertySchema(
      id: 8,
      name: r'repositories',
      type: IsarType.object,
      target: r'EnvRepos',
    ),
    r'saltMD5': PropertySchema(
      id: 9,
      name: r'saltMD5',
      type: IsarType.string,
    )
  },
  estimateSize: _environmentEstimateSize,
  serialize: _environmentSerialize,
  deserialize: _environmentDeserialize,
  deserializeProp: _environmentDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'EnvRepos': EnvReposSchema},
  getId: _environmentGetId,
  getLinks: _environmentGetLinks,
  attach: _environmentAttach,
  version: '3.1.0',
);

int _environmentEstimateSize(
  Environment object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.apiroot;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.context;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.encryptType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.host;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.protocol;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 +
      EnvReposSchema.estimateSize(
          object.repositories, allOffsets[EnvRepos]!, allOffsets);
  {
    final value = object.saltMD5;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _environmentSerialize(
  Environment object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiroot);
  writer.writeLong(offsets[1], object.backendPort);
  writer.writeString(offsets[2], object.context);
  writer.writeString(offsets[3], object.encryptType);
  writer.writeLong(offsets[4], object.frontendPort);
  writer.writeString(offsets[5], object.host);
  writer.writeString(offsets[6], object.name);
  writer.writeString(offsets[7], object.protocol);
  writer.writeObject<EnvRepos>(
    offsets[8],
    allOffsets,
    EnvReposSchema.serialize,
    object.repositories,
  );
  writer.writeString(offsets[9], object.saltMD5);
}

Environment _environmentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Environment(
    apiroot: reader.readStringOrNull(offsets[0]),
    context: reader.readStringOrNull(offsets[2]),
    encryptType: reader.readStringOrNull(offsets[3]),
    host: reader.readStringOrNull(offsets[5]),
    name: reader.readString(offsets[6]),
    protocol: reader.readStringOrNull(offsets[7]),
    repositories: reader.readObjectOrNull<EnvRepos>(
          offsets[8],
          EnvReposSchema.deserialize,
          allOffsets,
        ) ??
        EnvRepos(),
    saltMD5: reader.readStringOrNull(offsets[9]),
  );
  return object;
}

P _environmentDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readObjectOrNull<EnvRepos>(
            offset,
            EnvReposSchema.deserialize,
            allOffsets,
          ) ??
          EnvRepos()) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _environmentGetId(Environment object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _environmentGetLinks(Environment object) {
  return [];
}

void _environmentAttach(
    IsarCollection<dynamic> col, Id id, Environment object) {}

extension EnvironmentQueryWhereSort
    on QueryBuilder<Environment, Environment, QWhere> {
  QueryBuilder<Environment, Environment, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EnvironmentQueryWhere
    on QueryBuilder<Environment, Environment, QWhereClause> {
  QueryBuilder<Environment, Environment, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Environment, Environment, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Environment, Environment, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Environment, Environment, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EnvironmentQueryFilter
    on QueryBuilder<Environment, Environment, QFilterCondition> {
  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      apirootIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'apiroot',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      apirootIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'apiroot',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> apirootEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apiroot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      apirootGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apiroot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> apirootLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apiroot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> apirootBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apiroot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      apirootStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'apiroot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> apirootEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'apiroot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> apirootContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'apiroot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> apirootMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'apiroot',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      apirootIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apiroot',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      apirootIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'apiroot',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      backendPortEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backendPort',
        value: value,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      backendPortGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backendPort',
        value: value,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      backendPortLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backendPort',
        value: value,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      backendPortBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backendPort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      contextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'context',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      contextIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'context',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> contextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      contextGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> contextLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> contextBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'context',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      contextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> contextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> contextContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> contextMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'context',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      contextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'context',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      contextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'context',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'encryptType',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'encryptType',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'encryptType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'encryptType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'encryptType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'encryptType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'encryptType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'encryptType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'encryptType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'encryptType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'encryptType',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      encryptTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'encryptType',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      frontendPortEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontendPort',
        value: value,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      frontendPortGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frontendPort',
        value: value,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      frontendPortLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frontendPort',
        value: value,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      frontendPortBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frontendPort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> hostIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'host',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      hostIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'host',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> hostEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'host',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> hostGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'host',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> hostLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'host',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> hostBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'host',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> hostStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'host',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> hostEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'host',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> hostContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'host',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> hostMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'host',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> hostIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'host',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      hostIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'host',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      protocolIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'protocol',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      protocolIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'protocol',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> protocolEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'protocol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      protocolGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'protocol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      protocolLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'protocol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> protocolBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'protocol',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      protocolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'protocol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      protocolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'protocol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      protocolContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'protocol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> protocolMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'protocol',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      protocolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'protocol',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      protocolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'protocol',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      saltMD5IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'saltMD5',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      saltMD5IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'saltMD5',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> saltMD5EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saltMD5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      saltMD5GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'saltMD5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> saltMD5LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'saltMD5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> saltMD5Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saltMD5',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      saltMD5StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'saltMD5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> saltMD5EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'saltMD5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> saltMD5Contains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'saltMD5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition> saltMD5Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'saltMD5',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      saltMD5IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saltMD5',
        value: '',
      ));
    });
  }

  QueryBuilder<Environment, Environment, QAfterFilterCondition>
      saltMD5IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'saltMD5',
        value: '',
      ));
    });
  }
}

extension EnvironmentQueryObject
    on QueryBuilder<Environment, Environment, QFilterCondition> {
  QueryBuilder<Environment, Environment, QAfterFilterCondition> repositories(
      FilterQuery<EnvRepos> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'repositories');
    });
  }
}

extension EnvironmentQueryLinks
    on QueryBuilder<Environment, Environment, QFilterCondition> {}

extension EnvironmentQuerySortBy
    on QueryBuilder<Environment, Environment, QSortBy> {
  QueryBuilder<Environment, Environment, QAfterSortBy> sortByApiroot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiroot', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByApirootDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiroot', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByBackendPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backendPort', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByBackendPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backendPort', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByContext() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'context', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByContextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'context', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByEncryptType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encryptType', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByEncryptTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encryptType', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByFrontendPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frontendPort', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy>
      sortByFrontendPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frontendPort', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByHost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'host', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByHostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'host', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByProtocol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protocol', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortByProtocolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protocol', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortBySaltMD5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltMD5', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> sortBySaltMD5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltMD5', Sort.desc);
    });
  }
}

extension EnvironmentQuerySortThenBy
    on QueryBuilder<Environment, Environment, QSortThenBy> {
  QueryBuilder<Environment, Environment, QAfterSortBy> thenByApiroot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiroot', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByApirootDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiroot', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByBackendPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backendPort', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByBackendPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backendPort', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByContext() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'context', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByContextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'context', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByEncryptType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encryptType', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByEncryptTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encryptType', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByFrontendPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frontendPort', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy>
      thenByFrontendPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frontendPort', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByHost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'host', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByHostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'host', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByProtocol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protocol', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenByProtocolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protocol', Sort.desc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenBySaltMD5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltMD5', Sort.asc);
    });
  }

  QueryBuilder<Environment, Environment, QAfterSortBy> thenBySaltMD5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltMD5', Sort.desc);
    });
  }
}

extension EnvironmentQueryWhereDistinct
    on QueryBuilder<Environment, Environment, QDistinct> {
  QueryBuilder<Environment, Environment, QDistinct> distinctByApiroot(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiroot', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Environment, Environment, QDistinct> distinctByBackendPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backendPort');
    });
  }

  QueryBuilder<Environment, Environment, QDistinct> distinctByContext(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'context', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Environment, Environment, QDistinct> distinctByEncryptType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'encryptType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Environment, Environment, QDistinct> distinctByFrontendPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frontendPort');
    });
  }

  QueryBuilder<Environment, Environment, QDistinct> distinctByHost(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'host', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Environment, Environment, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Environment, Environment, QDistinct> distinctByProtocol(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'protocol', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Environment, Environment, QDistinct> distinctBySaltMD5(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'saltMD5', caseSensitive: caseSensitive);
    });
  }
}

extension EnvironmentQueryProperty
    on QueryBuilder<Environment, Environment, QQueryProperty> {
  QueryBuilder<Environment, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Environment, String?, QQueryOperations> apirootProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiroot');
    });
  }

  QueryBuilder<Environment, int, QQueryOperations> backendPortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backendPort');
    });
  }

  QueryBuilder<Environment, String?, QQueryOperations> contextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'context');
    });
  }

  QueryBuilder<Environment, String?, QQueryOperations> encryptTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'encryptType');
    });
  }

  QueryBuilder<Environment, int, QQueryOperations> frontendPortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frontendPort');
    });
  }

  QueryBuilder<Environment, String?, QQueryOperations> hostProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'host');
    });
  }

  QueryBuilder<Environment, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Environment, String?, QQueryOperations> protocolProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'protocol');
    });
  }

  QueryBuilder<Environment, EnvRepos, QQueryOperations> repositoriesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'repositories');
    });
  }

  QueryBuilder<Environment, String?, QQueryOperations> saltMD5Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'saltMD5');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Environment _$EnvironmentFromJson(Map<String, dynamic> json) => Environment(
      name: json['name'] as String,
      protocol: json['protocol'] as String?,
      apiroot: json['apiroot'] as String?,
      host: json['host'] as String?,
      encryptType: json['encryptType'] as String?,
      context: json['context'] as String?,
      repositories:
          EnvRepos.fromJson(json['repositories'] as Map<String, dynamic>),
      saltMD5: json['saltMD5'] as String?,
    );

Map<String, dynamic> _$EnvironmentToJson(Environment instance) =>
    <String, dynamic>{
      'name': instance.name,
      'protocol': instance.protocol,
      'apiroot': instance.apiroot,
      'host': instance.host,
      'encryptType': instance.encryptType,
      'saltMD5': instance.saltMD5,
      'context': instance.context,
      'repositories': instance.repositories.toJson(),
    };
