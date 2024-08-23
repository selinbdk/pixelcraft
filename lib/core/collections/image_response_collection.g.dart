// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetImageResponseCollectionCollection on Isar {
  IsarCollection<ImageResponseCollection> get imageResponseCollections =>
      this.collection();
}

const ImageResponseCollectionSchema = CollectionSchema(
  name: r'ImageResponseCollection',
  id: -3062670646954882188,
  properties: {
    r'base64': PropertySchema(
      id: 0,
      name: r'base64',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'finishReason': PropertySchema(
      id: 2,
      name: r'finishReason',
      type: IsarType.string,
    ),
    r'prompt': PropertySchema(
      id: 3,
      name: r'prompt',
      type: IsarType.string,
    ),
    r'seed': PropertySchema(
      id: 4,
      name: r'seed',
      type: IsarType.long,
    )
  },
  estimateSize: _imageResponseCollectionEstimateSize,
  serialize: _imageResponseCollectionSerialize,
  deserialize: _imageResponseCollectionDeserialize,
  deserializeProp: _imageResponseCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _imageResponseCollectionGetId,
  getLinks: _imageResponseCollectionGetLinks,
  attach: _imageResponseCollectionAttach,
  version: '3.1.0+1',
);

int _imageResponseCollectionEstimateSize(
  ImageResponseCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.base64;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.finishReason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.prompt;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _imageResponseCollectionSerialize(
  ImageResponseCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.base64);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.finishReason);
  writer.writeString(offsets[3], object.prompt);
  writer.writeLong(offsets[4], object.seed);
}

ImageResponseCollection _imageResponseCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ImageResponseCollection(
    base64: reader.readStringOrNull(offsets[0]),
    createdAt: reader.readDateTimeOrNull(offsets[1]),
    finishReason: reader.readStringOrNull(offsets[2]),
    id: id,
    prompt: reader.readStringOrNull(offsets[3]),
    seed: reader.readLongOrNull(offsets[4]),
  );
  return object;
}

P _imageResponseCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _imageResponseCollectionGetId(ImageResponseCollection object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _imageResponseCollectionGetLinks(
    ImageResponseCollection object) {
  return [];
}

void _imageResponseCollectionAttach(
    IsarCollection<dynamic> col, Id id, ImageResponseCollection object) {}

extension ImageResponseCollectionQueryWhereSort
    on QueryBuilder<ImageResponseCollection, ImageResponseCollection, QWhere> {
  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ImageResponseCollectionQueryWhere on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QWhereClause> {
  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterWhereClause> idBetween(
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

extension ImageResponseCollectionQueryFilter on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QFilterCondition> {
  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'base64',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'base64',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'base64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'base64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'base64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'base64',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'base64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'base64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      base64Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'base64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      base64Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'base64',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'base64',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'base64',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'finishReason',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'finishReason',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finishReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finishReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finishReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finishReason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'finishReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'finishReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      finishReasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'finishReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      finishReasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'finishReason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finishReason',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'finishReason',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prompt',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prompt',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prompt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prompt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prompt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prompt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prompt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prompt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      promptContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prompt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      promptMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prompt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prompt',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prompt',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seed',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seed',
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seed',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seed',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seed',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ImageResponseCollectionQueryObject on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QFilterCondition> {}

extension ImageResponseCollectionQueryLinks on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QFilterCondition> {}

extension ImageResponseCollectionQuerySortBy
    on QueryBuilder<ImageResponseCollection, ImageResponseCollection, QSortBy> {
  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByBase64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base64', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByBase64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base64', Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByFinishReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishReason', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByFinishReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishReason', Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByPrompt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prompt', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByPromptDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prompt', Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortBySeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seed', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortBySeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seed', Sort.desc);
    });
  }
}

extension ImageResponseCollectionQuerySortThenBy on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QSortThenBy> {
  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByBase64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base64', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByBase64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base64', Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByFinishReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishReason', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByFinishReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishReason', Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByPrompt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prompt', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByPromptDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prompt', Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenBySeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seed', Sort.asc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenBySeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seed', Sort.desc);
    });
  }
}

extension ImageResponseCollectionQueryWhereDistinct on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QDistinct> {
  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QDistinct>
      distinctByBase64({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'base64', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QDistinct>
      distinctByFinishReason({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'finishReason', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QDistinct>
      distinctByPrompt({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prompt', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QDistinct>
      distinctBySeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seed');
    });
  }
}

extension ImageResponseCollectionQueryProperty on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QQueryProperty> {
  QueryBuilder<ImageResponseCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ImageResponseCollection, String?, QQueryOperations>
      base64Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'base64');
    });
  }

  QueryBuilder<ImageResponseCollection, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ImageResponseCollection, String?, QQueryOperations>
      finishReasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'finishReason');
    });
  }

  QueryBuilder<ImageResponseCollection, String?, QQueryOperations>
      promptProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prompt');
    });
  }

  QueryBuilder<ImageResponseCollection, int?, QQueryOperations> seedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seed');
    });
  }
}
