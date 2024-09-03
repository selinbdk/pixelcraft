// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response_collection.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetImageResponseCollectionCollection on Isar {
  IsarCollection<int, ImageResponseCollection> get imageResponseCollections =>
      this.collection();
}

const ImageResponseCollectionSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ImageResponseCollection',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'base64',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'finishReason',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'prompt',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'createdAt',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'seed',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, ImageResponseCollection>(
    serialize: serializeImageResponseCollection,
    deserialize: deserializeImageResponseCollection,
    deserializeProperty: deserializeImageResponseCollectionProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeImageResponseCollection(
    IsarWriter writer, ImageResponseCollection object) {
  {
    final value = object.base64;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.finishReason;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.prompt;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  IsarCore.writeLong(writer, 4,
      object.createdAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeLong(writer, 5, object.seed ?? -9223372036854775808);
  return object.id;
}

@isarProtected
ImageResponseCollection deserializeImageResponseCollection(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String? _base64;
  _base64 = IsarCore.readString(reader, 1);
  final String? _finishReason;
  _finishReason = IsarCore.readString(reader, 2);
  final String? _prompt;
  _prompt = IsarCore.readString(reader, 3);
  final DateTime? _createdAt;
  {
    final value = IsarCore.readLong(reader, 4);
    if (value == -9223372036854775808) {
      _createdAt = null;
    } else {
      _createdAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final int? _seed;
  {
    final value = IsarCore.readLong(reader, 5);
    if (value == -9223372036854775808) {
      _seed = null;
    } else {
      _seed = value;
    }
  }
  final object = ImageResponseCollection(
    id: _id,
    base64: _base64,
    finishReason: _finishReason,
    prompt: _prompt,
    createdAt: _createdAt,
    seed: _seed,
  );
  return object;
}

@isarProtected
dynamic deserializeImageResponseCollectionProp(
    IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      {
        final value = IsarCore.readLong(reader, 4);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 5:
      {
        final value = IsarCore.readLong(reader, 5);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _ImageResponseCollectionUpdate {
  bool call({
    required int id,
    String? base64,
    String? finishReason,
    String? prompt,
    DateTime? createdAt,
    int? seed,
  });
}

class _ImageResponseCollectionUpdateImpl
    implements _ImageResponseCollectionUpdate {
  const _ImageResponseCollectionUpdateImpl(this.collection);

  final IsarCollection<int, ImageResponseCollection> collection;

  @override
  bool call({
    required int id,
    Object? base64 = ignore,
    Object? finishReason = ignore,
    Object? prompt = ignore,
    Object? createdAt = ignore,
    Object? seed = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (base64 != ignore) 1: base64 as String?,
          if (finishReason != ignore) 2: finishReason as String?,
          if (prompt != ignore) 3: prompt as String?,
          if (createdAt != ignore) 4: createdAt as DateTime?,
          if (seed != ignore) 5: seed as int?,
        }) >
        0;
  }
}

sealed class _ImageResponseCollectionUpdateAll {
  int call({
    required List<int> id,
    String? base64,
    String? finishReason,
    String? prompt,
    DateTime? createdAt,
    int? seed,
  });
}

class _ImageResponseCollectionUpdateAllImpl
    implements _ImageResponseCollectionUpdateAll {
  const _ImageResponseCollectionUpdateAllImpl(this.collection);

  final IsarCollection<int, ImageResponseCollection> collection;

  @override
  int call({
    required List<int> id,
    Object? base64 = ignore,
    Object? finishReason = ignore,
    Object? prompt = ignore,
    Object? createdAt = ignore,
    Object? seed = ignore,
  }) {
    return collection.updateProperties(id, {
      if (base64 != ignore) 1: base64 as String?,
      if (finishReason != ignore) 2: finishReason as String?,
      if (prompt != ignore) 3: prompt as String?,
      if (createdAt != ignore) 4: createdAt as DateTime?,
      if (seed != ignore) 5: seed as int?,
    });
  }
}

extension ImageResponseCollectionUpdate
    on IsarCollection<int, ImageResponseCollection> {
  _ImageResponseCollectionUpdate get update =>
      _ImageResponseCollectionUpdateImpl(this);

  _ImageResponseCollectionUpdateAll get updateAll =>
      _ImageResponseCollectionUpdateAllImpl(this);
}

sealed class _ImageResponseCollectionQueryUpdate {
  int call({
    String? base64,
    String? finishReason,
    String? prompt,
    DateTime? createdAt,
    int? seed,
  });
}

class _ImageResponseCollectionQueryUpdateImpl
    implements _ImageResponseCollectionQueryUpdate {
  const _ImageResponseCollectionQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<ImageResponseCollection> query;
  final int? limit;

  @override
  int call({
    Object? base64 = ignore,
    Object? finishReason = ignore,
    Object? prompt = ignore,
    Object? createdAt = ignore,
    Object? seed = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (base64 != ignore) 1: base64 as String?,
      if (finishReason != ignore) 2: finishReason as String?,
      if (prompt != ignore) 3: prompt as String?,
      if (createdAt != ignore) 4: createdAt as DateTime?,
      if (seed != ignore) 5: seed as int?,
    });
  }
}

extension ImageResponseCollectionQueryUpdate
    on IsarQuery<ImageResponseCollection> {
  _ImageResponseCollectionQueryUpdate get updateFirst =>
      _ImageResponseCollectionQueryUpdateImpl(this, limit: 1);

  _ImageResponseCollectionQueryUpdate get updateAll =>
      _ImageResponseCollectionQueryUpdateImpl(this);
}

class _ImageResponseCollectionQueryBuilderUpdateImpl
    implements _ImageResponseCollectionQueryUpdate {
  const _ImageResponseCollectionQueryBuilderUpdateImpl(this.query,
      {this.limit});

  final QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QOperations> query;
  final int? limit;

  @override
  int call({
    Object? base64 = ignore,
    Object? finishReason = ignore,
    Object? prompt = ignore,
    Object? createdAt = ignore,
    Object? seed = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (base64 != ignore) 1: base64 as String?,
        if (finishReason != ignore) 2: finishReason as String?,
        if (prompt != ignore) 3: prompt as String?,
        if (createdAt != ignore) 4: createdAt as DateTime?,
        if (seed != ignore) 5: seed as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension ImageResponseCollectionQueryBuilderUpdate on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QOperations> {
  _ImageResponseCollectionQueryUpdate get updateFirst =>
      _ImageResponseCollectionQueryBuilderUpdateImpl(this, limit: 1);

  _ImageResponseCollectionQueryUpdate get updateAll =>
      _ImageResponseCollectionQueryBuilderUpdateImpl(this);
}

extension ImageResponseCollectionQueryFilter on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QFilterCondition> {
  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64IsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64GreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64GreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64LessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64LessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64Between(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      base64Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      base64Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> base64IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      finishReasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      finishReasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> finishReasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      promptContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
          QAfterFilterCondition>
      promptMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> promptIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection,
      QAfterFilterCondition> seedBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension ImageResponseCollectionQueryObject on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QFilterCondition> {}

extension ImageResponseCollectionQuerySortBy
    on QueryBuilder<ImageResponseCollection, ImageResponseCollection, QSortBy> {
  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByBase64({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByBase64Desc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByFinishReason({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByFinishReasonDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByPrompt({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByPromptDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortBySeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      sortBySeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension ImageResponseCollectionQuerySortThenBy on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QSortThenBy> {
  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByBase64({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByBase64Desc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByFinishReason({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByFinishReasonDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByPrompt({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByPromptDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenBySeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterSortBy>
      thenBySeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension ImageResponseCollectionQueryWhereDistinct on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QDistinct> {
  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterDistinct>
      distinctByBase64({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterDistinct>
      distinctByFinishReason({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterDistinct>
      distinctByPrompt({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<ImageResponseCollection, ImageResponseCollection, QAfterDistinct>
      distinctBySeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension ImageResponseCollectionQueryProperty1 on QueryBuilder<
    ImageResponseCollection, ImageResponseCollection, QProperty> {
  QueryBuilder<ImageResponseCollection, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ImageResponseCollection, String?, QAfterProperty>
      base64Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ImageResponseCollection, String?, QAfterProperty>
      finishReasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ImageResponseCollection, String?, QAfterProperty>
      promptProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ImageResponseCollection, DateTime?, QAfterProperty>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ImageResponseCollection, int?, QAfterProperty> seedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension ImageResponseCollectionQueryProperty2<R>
    on QueryBuilder<ImageResponseCollection, R, QAfterProperty> {
  QueryBuilder<ImageResponseCollection, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ImageResponseCollection, (R, String?), QAfterProperty>
      base64Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ImageResponseCollection, (R, String?), QAfterProperty>
      finishReasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ImageResponseCollection, (R, String?), QAfterProperty>
      promptProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ImageResponseCollection, (R, DateTime?), QAfterProperty>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ImageResponseCollection, (R, int?), QAfterProperty>
      seedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension ImageResponseCollectionQueryProperty3<R1, R2>
    on QueryBuilder<ImageResponseCollection, (R1, R2), QAfterProperty> {
  QueryBuilder<ImageResponseCollection, (R1, R2, int), QOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ImageResponseCollection, (R1, R2, String?), QOperations>
      base64Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ImageResponseCollection, (R1, R2, String?), QOperations>
      finishReasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ImageResponseCollection, (R1, R2, String?), QOperations>
      promptProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ImageResponseCollection, (R1, R2, DateTime?), QOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ImageResponseCollection, (R1, R2, int?), QOperations>
      seedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}
