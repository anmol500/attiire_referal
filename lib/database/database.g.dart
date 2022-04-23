// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int? customerId;
  final String? name;
  final DateTime? joiningDate;
  final int? phoneNo;
  final int? refId1;
  final int? refId2;
  final int? refId3;
  final int? refId4;
  final int? refId5;
  final double? com;
  User(
      {this.customerId,
      this.name,
      this.joiningDate,
      this.phoneNo,
      this.refId1,
      this.refId2,
      this.refId3,
      this.refId4,
      this.refId5,
      this.com});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      customerId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}customer_id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      joiningDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}joining_date']),
      phoneNo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phoneNo']),
      refId1: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ref_id1']),
      refId2: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ref_id2']),
      refId3: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ref_id3']),
      refId4: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ref_id4']),
      refId5: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ref_id5']),
      com: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}com']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || customerId != null) {
      map['customer_id'] = Variable<int?>(customerId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || joiningDate != null) {
      map['joining_date'] = Variable<DateTime?>(joiningDate);
    }
    if (!nullToAbsent || phoneNo != null) {
      map['phoneNo'] = Variable<int?>(phoneNo);
    }
    if (!nullToAbsent || refId1 != null) {
      map['ref_id1'] = Variable<int?>(refId1);
    }
    if (!nullToAbsent || refId2 != null) {
      map['ref_id2'] = Variable<int?>(refId2);
    }
    if (!nullToAbsent || refId3 != null) {
      map['ref_id3'] = Variable<int?>(refId3);
    }
    if (!nullToAbsent || refId4 != null) {
      map['ref_id4'] = Variable<int?>(refId4);
    }
    if (!nullToAbsent || refId5 != null) {
      map['ref_id5'] = Variable<int?>(refId5);
    }
    if (!nullToAbsent || com != null) {
      map['com'] = Variable<double?>(com);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      customerId: customerId == null && nullToAbsent
          ? const Value.absent()
          : Value(customerId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      joiningDate: joiningDate == null && nullToAbsent
          ? const Value.absent()
          : Value(joiningDate),
      phoneNo: phoneNo == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNo),
      refId1:
          refId1 == null && nullToAbsent ? const Value.absent() : Value(refId1),
      refId2:
          refId2 == null && nullToAbsent ? const Value.absent() : Value(refId2),
      refId3:
          refId3 == null && nullToAbsent ? const Value.absent() : Value(refId3),
      refId4:
          refId4 == null && nullToAbsent ? const Value.absent() : Value(refId4),
      refId5:
          refId5 == null && nullToAbsent ? const Value.absent() : Value(refId5),
      com: com == null && nullToAbsent ? const Value.absent() : Value(com),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      customerId: serializer.fromJson<int?>(json['customer_id']),
      name: serializer.fromJson<String?>(json['name']),
      joiningDate: serializer.fromJson<DateTime?>(json['joining_date']),
      phoneNo: serializer.fromJson<int?>(json['phoneNo']),
      refId1: serializer.fromJson<int?>(json['ref_id1']),
      refId2: serializer.fromJson<int?>(json['ref_id2']),
      refId3: serializer.fromJson<int?>(json['ref_id3']),
      refId4: serializer.fromJson<int?>(json['ref_id4']),
      refId5: serializer.fromJson<int?>(json['ref_id5']),
      com: serializer.fromJson<double?>(json['com']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'customer_id': serializer.toJson<int?>(customerId),
      'name': serializer.toJson<String?>(name),
      'joining_date': serializer.toJson<DateTime?>(joiningDate),
      'phoneNo': serializer.toJson<int?>(phoneNo),
      'ref_id1': serializer.toJson<int?>(refId1),
      'ref_id2': serializer.toJson<int?>(refId2),
      'ref_id3': serializer.toJson<int?>(refId3),
      'ref_id4': serializer.toJson<int?>(refId4),
      'ref_id5': serializer.toJson<int?>(refId5),
      'com': serializer.toJson<double?>(com),
    };
  }

  User copyWith(
          {int? customerId,
          String? name,
          DateTime? joiningDate,
          int? phoneNo,
          int? refId1,
          int? refId2,
          int? refId3,
          int? refId4,
          int? refId5,
          double? com}) =>
      User(
        customerId: customerId ?? this.customerId,
        name: name ?? this.name,
        joiningDate: joiningDate ?? this.joiningDate,
        phoneNo: phoneNo ?? this.phoneNo,
        refId1: refId1 ?? this.refId1,
        refId2: refId2 ?? this.refId2,
        refId3: refId3 ?? this.refId3,
        refId4: refId4 ?? this.refId4,
        refId5: refId5 ?? this.refId5,
        com: com ?? this.com,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('customerId: $customerId, ')
          ..write('name: $name, ')
          ..write('joiningDate: $joiningDate, ')
          ..write('phoneNo: $phoneNo, ')
          ..write('refId1: $refId1, ')
          ..write('refId2: $refId2, ')
          ..write('refId3: $refId3, ')
          ..write('refId4: $refId4, ')
          ..write('refId5: $refId5, ')
          ..write('com: $com')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      customerId.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              joiningDate.hashCode,
              $mrjc(
                  phoneNo.hashCode,
                  $mrjc(
                      refId1.hashCode,
                      $mrjc(
                          refId2.hashCode,
                          $mrjc(
                              refId3.hashCode,
                              $mrjc(refId4.hashCode,
                                  $mrjc(refId5.hashCode, com.hashCode))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.customerId == this.customerId &&
          other.name == this.name &&
          other.joiningDate == this.joiningDate &&
          other.phoneNo == this.phoneNo &&
          other.refId1 == this.refId1 &&
          other.refId2 == this.refId2 &&
          other.refId3 == this.refId3 &&
          other.refId4 == this.refId4 &&
          other.refId5 == this.refId5 &&
          other.com == this.com);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int?> customerId;
  final Value<String?> name;
  final Value<DateTime?> joiningDate;
  final Value<int?> phoneNo;
  final Value<int?> refId1;
  final Value<int?> refId2;
  final Value<int?> refId3;
  final Value<int?> refId4;
  final Value<int?> refId5;
  final Value<double?> com;
  const UsersCompanion({
    this.customerId = const Value.absent(),
    this.name = const Value.absent(),
    this.joiningDate = const Value.absent(),
    this.phoneNo = const Value.absent(),
    this.refId1 = const Value.absent(),
    this.refId2 = const Value.absent(),
    this.refId3 = const Value.absent(),
    this.refId4 = const Value.absent(),
    this.refId5 = const Value.absent(),
    this.com = const Value.absent(),
  });
  UsersCompanion.insert({
    this.customerId = const Value.absent(),
    this.name = const Value.absent(),
    this.joiningDate = const Value.absent(),
    this.phoneNo = const Value.absent(),
    this.refId1 = const Value.absent(),
    this.refId2 = const Value.absent(),
    this.refId3 = const Value.absent(),
    this.refId4 = const Value.absent(),
    this.refId5 = const Value.absent(),
    this.com = const Value.absent(),
  });
  static Insertable<User> custom({
    Expression<int?>? customerId,
    Expression<String?>? name,
    Expression<DateTime?>? joiningDate,
    Expression<int?>? phoneNo,
    Expression<int?>? refId1,
    Expression<int?>? refId2,
    Expression<int?>? refId3,
    Expression<int?>? refId4,
    Expression<int?>? refId5,
    Expression<double?>? com,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'customer_id': customerId,
      if (name != null) 'name': name,
      if (joiningDate != null) 'joining_date': joiningDate,
      if (phoneNo != null) 'phoneNo': phoneNo,
      if (refId1 != null) 'ref_id1': refId1,
      if (refId2 != null) 'ref_id2': refId2,
      if (refId3 != null) 'ref_id3': refId3,
      if (refId4 != null) 'ref_id4': refId4,
      if (refId5 != null) 'ref_id5': refId5,
      if (com != null) 'com': com,
    });
  }

  UsersCompanion copyWith(
      {Value<int?>? customerId,
      Value<String?>? name,
      Value<DateTime?>? joiningDate,
      Value<int?>? phoneNo,
      Value<int?>? refId1,
      Value<int?>? refId2,
      Value<int?>? refId3,
      Value<int?>? refId4,
      Value<int?>? refId5,
      Value<double?>? com}) {
    return UsersCompanion(
      customerId: customerId ?? this.customerId,
      name: name ?? this.name,
      joiningDate: joiningDate ?? this.joiningDate,
      phoneNo: phoneNo ?? this.phoneNo,
      refId1: refId1 ?? this.refId1,
      refId2: refId2 ?? this.refId2,
      refId3: refId3 ?? this.refId3,
      refId4: refId4 ?? this.refId4,
      refId5: refId5 ?? this.refId5,
      com: com ?? this.com,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['customer_id'] = Variable<int?>(customerId.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (joiningDate.present) {
      map['joining_date'] = Variable<DateTime?>(joiningDate.value);
    }
    if (phoneNo.present) {
      map['phoneNo'] = Variable<int?>(phoneNo.value);
    }
    if (refId1.present) {
      map['ref_id1'] = Variable<int?>(refId1.value);
    }
    if (refId2.present) {
      map['ref_id2'] = Variable<int?>(refId2.value);
    }
    if (refId3.present) {
      map['ref_id3'] = Variable<int?>(refId3.value);
    }
    if (refId4.present) {
      map['ref_id4'] = Variable<int?>(refId4.value);
    }
    if (refId5.present) {
      map['ref_id5'] = Variable<int?>(refId5.value);
    }
    if (com.present) {
      map['com'] = Variable<double?>(com.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('customerId: $customerId, ')
          ..write('name: $name, ')
          ..write('joiningDate: $joiningDate, ')
          ..write('phoneNo: $phoneNo, ')
          ..write('refId1: $refId1, ')
          ..write('refId2: $refId2, ')
          ..write('refId3: $refId3, ')
          ..write('refId4: $refId4, ')
          ..write('refId5: $refId5, ')
          ..write('com: $com')
          ..write(')'))
        .toString();
  }
}

class Users extends Table with TableInfo<Users, User> {
  final GeneratedDatabase _db;
  final String? _alias;
  Users(this._db, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  late final GeneratedColumn<int?> customerId = GeneratedColumn<int?>(
      'customer_id', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'primary key');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _joiningDateMeta =
      const VerificationMeta('joiningDate');
  late final GeneratedColumn<DateTime?> joiningDate =
      GeneratedColumn<DateTime?>('joining_date', aliasedName, true,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          $customConstraints: '');
  final VerificationMeta _phoneNoMeta = const VerificationMeta('phoneNo');
  late final GeneratedColumn<int?> phoneNo = GeneratedColumn<int?>(
      'phoneNo', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _refId1Meta = const VerificationMeta('refId1');
  late final GeneratedColumn<int?> refId1 = GeneratedColumn<int?>(
      'ref_id1', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _refId2Meta = const VerificationMeta('refId2');
  late final GeneratedColumn<int?> refId2 = GeneratedColumn<int?>(
      'ref_id2', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _refId3Meta = const VerificationMeta('refId3');
  late final GeneratedColumn<int?> refId3 = GeneratedColumn<int?>(
      'ref_id3', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _refId4Meta = const VerificationMeta('refId4');
  late final GeneratedColumn<int?> refId4 = GeneratedColumn<int?>(
      'ref_id4', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _refId5Meta = const VerificationMeta('refId5');
  late final GeneratedColumn<int?> refId5 = GeneratedColumn<int?>(
      'ref_id5', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _comMeta = const VerificationMeta('com');
  late final GeneratedColumn<double?> com = GeneratedColumn<double?>(
      'com', aliasedName, true,
      typeName: 'REAL', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        name,
        joiningDate,
        phoneNo,
        refId1,
        refId2,
        refId3,
        refId4,
        refId5,
        com
      ];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('customer_id')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customer_id']!, _customerIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('joining_date')) {
      context.handle(
          _joiningDateMeta,
          joiningDate.isAcceptableOrUnknown(
              data['joining_date']!, _joiningDateMeta));
    }
    if (data.containsKey('phoneNo')) {
      context.handle(_phoneNoMeta,
          phoneNo.isAcceptableOrUnknown(data['phoneNo']!, _phoneNoMeta));
    }
    if (data.containsKey('ref_id1')) {
      context.handle(_refId1Meta,
          refId1.isAcceptableOrUnknown(data['ref_id1']!, _refId1Meta));
    }
    if (data.containsKey('ref_id2')) {
      context.handle(_refId2Meta,
          refId2.isAcceptableOrUnknown(data['ref_id2']!, _refId2Meta));
    }
    if (data.containsKey('ref_id3')) {
      context.handle(_refId3Meta,
          refId3.isAcceptableOrUnknown(data['ref_id3']!, _refId3Meta));
    }
    if (data.containsKey('ref_id4')) {
      context.handle(_refId4Meta,
          refId4.isAcceptableOrUnknown(data['ref_id4']!, _refId4Meta));
    }
    if (data.containsKey('ref_id5')) {
      context.handle(_refId5Meta,
          refId5.isAcceptableOrUnknown(data['ref_id5']!, _refId5Meta));
    }
    if (data.containsKey('com')) {
      context.handle(
          _comMeta, com.isAcceptableOrUnknown(data['com']!, _comMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Users createAlias(String alias) {
    return Users(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class ComTData extends DataClass implements Insertable<ComTData> {
  final int? id;
  final int? comE;
  final String? comEName;
  final int? comF;
  final String? comFName;
  final double? commA;
  final DateTime? date;
  ComTData(
      {this.id,
      this.comE,
      this.comEName,
      this.comF,
      this.comFName,
      this.commA,
      this.date});
  factory ComTData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ComTData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      comE: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}comE']),
      comEName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}comEName']),
      comF: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}comF']),
      comFName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}comFName']),
      commA: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CommA']),
      date: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || comE != null) {
      map['comE'] = Variable<int?>(comE);
    }
    if (!nullToAbsent || comEName != null) {
      map['comEName'] = Variable<String?>(comEName);
    }
    if (!nullToAbsent || comF != null) {
      map['comF'] = Variable<int?>(comF);
    }
    if (!nullToAbsent || comFName != null) {
      map['comFName'] = Variable<String?>(comFName);
    }
    if (!nullToAbsent || commA != null) {
      map['CommA'] = Variable<double?>(commA);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<DateTime?>(date);
    }
    return map;
  }

  ComTCompanion toCompanion(bool nullToAbsent) {
    return ComTCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      comE: comE == null && nullToAbsent ? const Value.absent() : Value(comE),
      comEName: comEName == null && nullToAbsent
          ? const Value.absent()
          : Value(comEName),
      comF: comF == null && nullToAbsent ? const Value.absent() : Value(comF),
      comFName: comFName == null && nullToAbsent
          ? const Value.absent()
          : Value(comFName),
      commA:
          commA == null && nullToAbsent ? const Value.absent() : Value(commA),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
    );
  }

  factory ComTData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ComTData(
      id: serializer.fromJson<int?>(json['id']),
      comE: serializer.fromJson<int?>(json['comE']),
      comEName: serializer.fromJson<String?>(json['comEName']),
      comF: serializer.fromJson<int?>(json['comF']),
      comFName: serializer.fromJson<String?>(json['comFName']),
      commA: serializer.fromJson<double?>(json['CommA']),
      date: serializer.fromJson<DateTime?>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'comE': serializer.toJson<int?>(comE),
      'comEName': serializer.toJson<String?>(comEName),
      'comF': serializer.toJson<int?>(comF),
      'comFName': serializer.toJson<String?>(comFName),
      'CommA': serializer.toJson<double?>(commA),
      'date': serializer.toJson<DateTime?>(date),
    };
  }

  ComTData copyWith(
          {int? id,
          int? comE,
          String? comEName,
          int? comF,
          String? comFName,
          double? commA,
          DateTime? date}) =>
      ComTData(
        id: id ?? this.id,
        comE: comE ?? this.comE,
        comEName: comEName ?? this.comEName,
        comF: comF ?? this.comF,
        comFName: comFName ?? this.comFName,
        commA: commA ?? this.commA,
        date: date ?? this.date,
      );
  @override
  String toString() {
    return (StringBuffer('ComTData(')
          ..write('id: $id, ')
          ..write('comE: $comE, ')
          ..write('comEName: $comEName, ')
          ..write('comF: $comF, ')
          ..write('comFName: $comFName, ')
          ..write('commA: $commA, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          comE.hashCode,
          $mrjc(
              comEName.hashCode,
              $mrjc(
                  comF.hashCode,
                  $mrjc(comFName.hashCode,
                      $mrjc(commA.hashCode, date.hashCode)))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ComTData &&
          other.id == this.id &&
          other.comE == this.comE &&
          other.comEName == this.comEName &&
          other.comF == this.comF &&
          other.comFName == this.comFName &&
          other.commA == this.commA &&
          other.date == this.date);
}

class ComTCompanion extends UpdateCompanion<ComTData> {
  final Value<int?> id;
  final Value<int?> comE;
  final Value<String?> comEName;
  final Value<int?> comF;
  final Value<String?> comFName;
  final Value<double?> commA;
  final Value<DateTime?> date;
  const ComTCompanion({
    this.id = const Value.absent(),
    this.comE = const Value.absent(),
    this.comEName = const Value.absent(),
    this.comF = const Value.absent(),
    this.comFName = const Value.absent(),
    this.commA = const Value.absent(),
    this.date = const Value.absent(),
  });
  ComTCompanion.insert({
    this.id = const Value.absent(),
    this.comE = const Value.absent(),
    this.comEName = const Value.absent(),
    this.comF = const Value.absent(),
    this.comFName = const Value.absent(),
    this.commA = const Value.absent(),
    this.date = const Value.absent(),
  });
  static Insertable<ComTData> custom({
    Expression<int?>? id,
    Expression<int?>? comE,
    Expression<String?>? comEName,
    Expression<int?>? comF,
    Expression<String?>? comFName,
    Expression<double?>? commA,
    Expression<DateTime?>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (comE != null) 'comE': comE,
      if (comEName != null) 'comEName': comEName,
      if (comF != null) 'comF': comF,
      if (comFName != null) 'comFName': comFName,
      if (commA != null) 'CommA': commA,
      if (date != null) 'date': date,
    });
  }

  ComTCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? comE,
      Value<String?>? comEName,
      Value<int?>? comF,
      Value<String?>? comFName,
      Value<double?>? commA,
      Value<DateTime?>? date}) {
    return ComTCompanion(
      id: id ?? this.id,
      comE: comE ?? this.comE,
      comEName: comEName ?? this.comEName,
      comF: comF ?? this.comF,
      comFName: comFName ?? this.comFName,
      commA: commA ?? this.commA,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (comE.present) {
      map['comE'] = Variable<int?>(comE.value);
    }
    if (comEName.present) {
      map['comEName'] = Variable<String?>(comEName.value);
    }
    if (comF.present) {
      map['comF'] = Variable<int?>(comF.value);
    }
    if (comFName.present) {
      map['comFName'] = Variable<String?>(comFName.value);
    }
    if (commA.present) {
      map['CommA'] = Variable<double?>(commA.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime?>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ComTCompanion(')
          ..write('id: $id, ')
          ..write('comE: $comE, ')
          ..write('comEName: $comEName, ')
          ..write('comF: $comF, ')
          ..write('comFName: $comFName, ')
          ..write('commA: $commA, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class ComT extends Table with TableInfo<ComT, ComTData> {
  final GeneratedDatabase _db;
  final String? _alias;
  ComT(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'primary key');
  final VerificationMeta _comEMeta = const VerificationMeta('comE');
  late final GeneratedColumn<int?> comE = GeneratedColumn<int?>(
      'comE', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _comENameMeta = const VerificationMeta('comEName');
  late final GeneratedColumn<String?> comEName = GeneratedColumn<String?>(
      'comEName', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _comFMeta = const VerificationMeta('comF');
  late final GeneratedColumn<int?> comF = GeneratedColumn<int?>(
      'comF', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _comFNameMeta = const VerificationMeta('comFName');
  late final GeneratedColumn<String?> comFName = GeneratedColumn<String?>(
      'comFName', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _commAMeta = const VerificationMeta('commA');
  late final GeneratedColumn<double?> commA = GeneratedColumn<double?>(
      'CommA', aliasedName, true,
      typeName: 'REAL', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  late final GeneratedColumn<DateTime?> date = GeneratedColumn<DateTime?>(
      'date', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, comE, comEName, comF, comFName, commA, date];
  @override
  String get aliasedName => _alias ?? 'comT';
  @override
  String get actualTableName => 'comT';
  @override
  VerificationContext validateIntegrity(Insertable<ComTData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('comE')) {
      context.handle(
          _comEMeta, comE.isAcceptableOrUnknown(data['comE']!, _comEMeta));
    }
    if (data.containsKey('comEName')) {
      context.handle(_comENameMeta,
          comEName.isAcceptableOrUnknown(data['comEName']!, _comENameMeta));
    }
    if (data.containsKey('comF')) {
      context.handle(
          _comFMeta, comF.isAcceptableOrUnknown(data['comF']!, _comFMeta));
    }
    if (data.containsKey('comFName')) {
      context.handle(_comFNameMeta,
          comFName.isAcceptableOrUnknown(data['comFName']!, _comFNameMeta));
    }
    if (data.containsKey('CommA')) {
      context.handle(
          _commAMeta, commA.isAcceptableOrUnknown(data['CommA']!, _commAMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ComTData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ComTData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  ComT createAlias(String alias) {
    return ComT(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class PaidComData extends DataClass implements Insertable<PaidComData> {
  final int? id;
  final int? customerId;
  final String? name;
  final double? amt;
  final DateTime? date;
  PaidComData({this.id, this.customerId, this.name, this.amt, this.date});
  factory PaidComData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PaidComData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      customerId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}customer_id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      amt: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amt']),
      date: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || customerId != null) {
      map['customer_id'] = Variable<int?>(customerId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || amt != null) {
      map['amt'] = Variable<double?>(amt);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<DateTime?>(date);
    }
    return map;
  }

  PaidComCompanion toCompanion(bool nullToAbsent) {
    return PaidComCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      customerId: customerId == null && nullToAbsent
          ? const Value.absent()
          : Value(customerId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      amt: amt == null && nullToAbsent ? const Value.absent() : Value(amt),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
    );
  }

  factory PaidComData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PaidComData(
      id: serializer.fromJson<int?>(json['id']),
      customerId: serializer.fromJson<int?>(json['customer_id']),
      name: serializer.fromJson<String?>(json['name']),
      amt: serializer.fromJson<double?>(json['amt']),
      date: serializer.fromJson<DateTime?>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'customer_id': serializer.toJson<int?>(customerId),
      'name': serializer.toJson<String?>(name),
      'amt': serializer.toJson<double?>(amt),
      'date': serializer.toJson<DateTime?>(date),
    };
  }

  PaidComData copyWith(
          {int? id,
          int? customerId,
          String? name,
          double? amt,
          DateTime? date}) =>
      PaidComData(
        id: id ?? this.id,
        customerId: customerId ?? this.customerId,
        name: name ?? this.name,
        amt: amt ?? this.amt,
        date: date ?? this.date,
      );
  @override
  String toString() {
    return (StringBuffer('PaidComData(')
          ..write('id: $id, ')
          ..write('customerId: $customerId, ')
          ..write('name: $name, ')
          ..write('amt: $amt, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(customerId.hashCode,
          $mrjc(name.hashCode, $mrjc(amt.hashCode, date.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PaidComData &&
          other.id == this.id &&
          other.customerId == this.customerId &&
          other.name == this.name &&
          other.amt == this.amt &&
          other.date == this.date);
}

class PaidComCompanion extends UpdateCompanion<PaidComData> {
  final Value<int?> id;
  final Value<int?> customerId;
  final Value<String?> name;
  final Value<double?> amt;
  final Value<DateTime?> date;
  const PaidComCompanion({
    this.id = const Value.absent(),
    this.customerId = const Value.absent(),
    this.name = const Value.absent(),
    this.amt = const Value.absent(),
    this.date = const Value.absent(),
  });
  PaidComCompanion.insert({
    this.id = const Value.absent(),
    this.customerId = const Value.absent(),
    this.name = const Value.absent(),
    this.amt = const Value.absent(),
    this.date = const Value.absent(),
  });
  static Insertable<PaidComData> custom({
    Expression<int?>? id,
    Expression<int?>? customerId,
    Expression<String?>? name,
    Expression<double?>? amt,
    Expression<DateTime?>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (customerId != null) 'customer_id': customerId,
      if (name != null) 'name': name,
      if (amt != null) 'amt': amt,
      if (date != null) 'date': date,
    });
  }

  PaidComCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? customerId,
      Value<String?>? name,
      Value<double?>? amt,
      Value<DateTime?>? date}) {
    return PaidComCompanion(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      name: name ?? this.name,
      amt: amt ?? this.amt,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (customerId.present) {
      map['customer_id'] = Variable<int?>(customerId.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (amt.present) {
      map['amt'] = Variable<double?>(amt.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime?>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaidComCompanion(')
          ..write('id: $id, ')
          ..write('customerId: $customerId, ')
          ..write('name: $name, ')
          ..write('amt: $amt, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class PaidCom extends Table with TableInfo<PaidCom, PaidComData> {
  final GeneratedDatabase _db;
  final String? _alias;
  PaidCom(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'primary key');
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  late final GeneratedColumn<int?> customerId = GeneratedColumn<int?>(
      'customer_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _amtMeta = const VerificationMeta('amt');
  late final GeneratedColumn<double?> amt = GeneratedColumn<double?>(
      'amt', aliasedName, true,
      typeName: 'REAL', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  late final GeneratedColumn<DateTime?> date = GeneratedColumn<DateTime?>(
      'date', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [id, customerId, name, amt, date];
  @override
  String get aliasedName => _alias ?? 'PaidCom';
  @override
  String get actualTableName => 'PaidCom';
  @override
  VerificationContext validateIntegrity(Insertable<PaidComData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('customer_id')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customer_id']!, _customerIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('amt')) {
      context.handle(
          _amtMeta, amt.isAcceptableOrUnknown(data['amt']!, _amtMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PaidComData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PaidComData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  PaidCom createAlias(String alias) {
    return PaidCom(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class OrderpData extends DataClass implements Insertable<OrderpData> {
  final int? orderId;
  final String? name;
  final int? phone;
  final DateTime? date;
  final int? amt;
  final double? com;
  OrderpData(
      {this.orderId, this.name, this.phone, this.date, this.amt, this.com});
  factory OrderpData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OrderpData(
      orderId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}orderId']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      phone: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      date: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date']),
      amt: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amt']),
      com: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}com']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderId != null) {
      map['orderId'] = Variable<int?>(orderId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<int?>(phone);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<DateTime?>(date);
    }
    if (!nullToAbsent || amt != null) {
      map['amt'] = Variable<int?>(amt);
    }
    if (!nullToAbsent || com != null) {
      map['com'] = Variable<double?>(com);
    }
    return map;
  }

  OrderpCompanion toCompanion(bool nullToAbsent) {
    return OrderpCompanion(
      orderId: orderId == null && nullToAbsent
          ? const Value.absent()
          : Value(orderId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      amt: amt == null && nullToAbsent ? const Value.absent() : Value(amt),
      com: com == null && nullToAbsent ? const Value.absent() : Value(com),
    );
  }

  factory OrderpData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return OrderpData(
      orderId: serializer.fromJson<int?>(json['orderId']),
      name: serializer.fromJson<String?>(json['name']),
      phone: serializer.fromJson<int?>(json['phone']),
      date: serializer.fromJson<DateTime?>(json['date']),
      amt: serializer.fromJson<int?>(json['amt']),
      com: serializer.fromJson<double?>(json['com']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderId': serializer.toJson<int?>(orderId),
      'name': serializer.toJson<String?>(name),
      'phone': serializer.toJson<int?>(phone),
      'date': serializer.toJson<DateTime?>(date),
      'amt': serializer.toJson<int?>(amt),
      'com': serializer.toJson<double?>(com),
    };
  }

  OrderpData copyWith(
          {int? orderId,
          String? name,
          int? phone,
          DateTime? date,
          int? amt,
          double? com}) =>
      OrderpData(
        orderId: orderId ?? this.orderId,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        date: date ?? this.date,
        amt: amt ?? this.amt,
        com: com ?? this.com,
      );
  @override
  String toString() {
    return (StringBuffer('OrderpData(')
          ..write('orderId: $orderId, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('date: $date, ')
          ..write('amt: $amt, ')
          ..write('com: $com')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      orderId.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(phone.hashCode,
              $mrjc(date.hashCode, $mrjc(amt.hashCode, com.hashCode))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderpData &&
          other.orderId == this.orderId &&
          other.name == this.name &&
          other.phone == this.phone &&
          other.date == this.date &&
          other.amt == this.amt &&
          other.com == this.com);
}

class OrderpCompanion extends UpdateCompanion<OrderpData> {
  final Value<int?> orderId;
  final Value<String?> name;
  final Value<int?> phone;
  final Value<DateTime?> date;
  final Value<int?> amt;
  final Value<double?> com;
  const OrderpCompanion({
    this.orderId = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.date = const Value.absent(),
    this.amt = const Value.absent(),
    this.com = const Value.absent(),
  });
  OrderpCompanion.insert({
    this.orderId = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.date = const Value.absent(),
    this.amt = const Value.absent(),
    this.com = const Value.absent(),
  });
  static Insertable<OrderpData> custom({
    Expression<int?>? orderId,
    Expression<String?>? name,
    Expression<int?>? phone,
    Expression<DateTime?>? date,
    Expression<int?>? amt,
    Expression<double?>? com,
  }) {
    return RawValuesInsertable({
      if (orderId != null) 'orderId': orderId,
      if (name != null) 'name': name,
      if (phone != null) 'phone': phone,
      if (date != null) 'date': date,
      if (amt != null) 'amt': amt,
      if (com != null) 'com': com,
    });
  }

  OrderpCompanion copyWith(
      {Value<int?>? orderId,
      Value<String?>? name,
      Value<int?>? phone,
      Value<DateTime?>? date,
      Value<int?>? amt,
      Value<double?>? com}) {
    return OrderpCompanion(
      orderId: orderId ?? this.orderId,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      date: date ?? this.date,
      amt: amt ?? this.amt,
      com: com ?? this.com,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderId.present) {
      map['orderId'] = Variable<int?>(orderId.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (phone.present) {
      map['phone'] = Variable<int?>(phone.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime?>(date.value);
    }
    if (amt.present) {
      map['amt'] = Variable<int?>(amt.value);
    }
    if (com.present) {
      map['com'] = Variable<double?>(com.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderpCompanion(')
          ..write('orderId: $orderId, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('date: $date, ')
          ..write('amt: $amt, ')
          ..write('com: $com')
          ..write(')'))
        .toString();
  }
}

class Orderp extends Table with TableInfo<Orderp, OrderpData> {
  final GeneratedDatabase _db;
  final String? _alias;
  Orderp(this._db, [this._alias]);
  final VerificationMeta _orderIdMeta = const VerificationMeta('orderId');
  late final GeneratedColumn<int?> orderId = GeneratedColumn<int?>(
      'orderId', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'primary key');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  late final GeneratedColumn<int?> phone = GeneratedColumn<int?>(
      'phone', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  late final GeneratedColumn<DateTime?> date = GeneratedColumn<DateTime?>(
      'date', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _amtMeta = const VerificationMeta('amt');
  late final GeneratedColumn<int?> amt = GeneratedColumn<int?>(
      'amt', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _comMeta = const VerificationMeta('com');
  late final GeneratedColumn<double?> com = GeneratedColumn<double?>(
      'com', aliasedName, true,
      typeName: 'REAL', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [orderId, name, phone, date, amt, com];
  @override
  String get aliasedName => _alias ?? 'orderp';
  @override
  String get actualTableName => 'orderp';
  @override
  VerificationContext validateIntegrity(Insertable<OrderpData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('orderId')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['orderId']!, _orderIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    if (data.containsKey('amt')) {
      context.handle(
          _amtMeta, amt.isAcceptableOrUnknown(data['amt']!, _amtMeta));
    }
    if (data.containsKey('com')) {
      context.handle(
          _comMeta, com.isAcceptableOrUnknown(data['com']!, _comMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderId};
  @override
  OrderpData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return OrderpData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Orderp createAlias(String alias) {
    return Orderp(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final Users users = Users(this);
  late final ComT comT = ComT(this);
  late final PaidCom paidCom = PaidCom(this);
  late final Orderp orderp = Orderp(this);
  Selectable<User> checkUserExist(int? p) {
    return customSelect('select * from users where phoneNo = :p', variables: [
      Variable<int?>(p)
    ], readsFrom: {
      users,
    }).map(users.mapFromRow);
  }

  Future<int> insertUserById(double? com, int? id) {
    return customUpdate(
      'update users SET com = :com where customer_id = :id',
      variables: [Variable<double?>(com), Variable<int?>(id)],
      updates: {users},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> insertPaidCom(
      int? id, String? name, double? amt, DateTime? date) {
    return customInsert(
      'insert into PaidCom ( customer_id,name,amt,date) values (:id,:name,:amt,:date)',
      variables: [
        Variable<int?>(id),
        Variable<String?>(name),
        Variable<double?>(amt),
        Variable<DateTime?>(date)
      ],
      updates: {paidCom},
    );
  }

  Selectable<PaidComData> getPaidCom() {
    return customSelect('select * from PaidCom order by date desc',
        variables: [],
        readsFrom: {
          paidCom,
        }).map(paidCom.mapFromRow);
  }

  Selectable<User> getUserNameByPhone(int? phone) {
    return customSelect('SELECT *\r\nFROM users\r\nwhere phoneNo = :phone',
        variables: [
          Variable<int?>(phone)
        ],
        readsFrom: {
          users,
        }).map(users.mapFromRow);
  }

  Selectable<User> getUserNameById(int? id) {
    return customSelect('SELECT *\r\nFROM users\r\nwhere customer_id = :id',
        variables: [
          Variable<int?>(id)
        ],
        readsFrom: {
          users,
        }).map(users.mapFromRow);
  }

  Future<int> insertOrderp(
      String? name, int? phone, DateTime? dateT, int? amt, double? com) {
    return customInsert(
      'insert into orderp( name,phone,date,amt,com) values(:name,:phone,:dateT,:amt,:com)',
      variables: [
        Variable<String?>(name),
        Variable<int?>(phone),
        Variable<DateTime?>(dateT),
        Variable<int?>(amt),
        Variable<double?>(com)
      ],
      updates: {orderp},
    );
  }

  Selectable<OrderpData> getOrderp() {
    return customSelect('select * from orderp', variables: [], readsFrom: {
      orderp,
    }).map(orderp.mapFromRow);
  }

  Selectable<OrderpData> getOrderpByDateDesc() {
    return customSelect('select * from orderp order by date desc',
        variables: [],
        readsFrom: {
          orderp,
        }).map(orderp.mapFromRow);
  }

  Selectable<OrderpData> getOrderpFromTo(DateTime? from, DateTime? to) {
    return customSelect(
        'SELECT * FROM orderp\r\nWHERE date BETWEEN :from AND :to',
        variables: [
          Variable<DateTime?>(from),
          Variable<DateTime?>(to)
        ],
        readsFrom: {
          orderp,
        }).map(orderp.mapFromRow);
  }

  Selectable<OrderpData> getOrderpOfdate(DateTime? date) {
    return customSelect('SELECT * FROM orderp\r\nWHERE date = :date',
        variables: [
          Variable<DateTime?>(date)
        ],
        readsFrom: {
          orderp,
        }).map(orderp.mapFromRow);
  }

  Selectable<ComTData> getComT() {
    return customSelect('select * from comT order by date desc',
        variables: [],
        readsFrom: {
          comT,
        }).map(comT.mapFromRow);
  }

  Selectable<GetComTjoinUsersResult> getComTjoinUsers() {
    return customSelect(
        'select * from comT\r\nINNER JOIN users ON comT.comF=users.customer_id\r\norder by date desc',
        variables: [],
        readsFrom: {
          comT,
          users,
        }).map((QueryRow row) {
      return GetComTjoinUsersResult(
        id: row.read<int?>('id'),
        comE: row.read<int?>('comE'),
        comEName: row.read<String?>('comEName'),
        comF: row.read<int?>('comF'),
        comFName: row.read<String?>('comFName'),
        commA: row.read<double?>('CommA'),
        date: row.read<DateTime?>('date'),
        customerId: row.read<int?>('customer_id'),
        name: row.read<String?>('name'),
        joiningDate: row.read<DateTime?>('joining_date'),
        phoneNo: row.read<int?>('phoneNo'),
        refId1: row.read<int?>('ref_id1'),
        refId2: row.read<int?>('ref_id2'),
        refId3: row.read<int?>('ref_id3'),
        refId4: row.read<int?>('ref_id4'),
        refId5: row.read<int?>('ref_id5'),
        com: row.read<double?>('com'),
      );
    });
  }

  Selectable<ComTData> getComTByUser(int? comE) {
    return customSelect('select * from comT where comE = :comE', variables: [
      Variable<int?>(comE)
    ], readsFrom: {
      comT,
    }).map(comT.mapFromRow);
  }

  Selectable<ComTData> getComTByOneUser(int? comE) {
    return customSelect('select * from comT where comE = :comE group by comE',
        variables: [
          Variable<int?>(comE)
        ],
        readsFrom: {
          comT,
        }).map(comT.mapFromRow);
  }

  Selectable<ComTData> getComTByGroupUser() {
    return customSelect('select * from comT group by comE',
        variables: [],
        readsFrom: {
          comT,
        }).map(comT.mapFromRow);
  }

  Selectable<ComTData> getComTByGroupDate() {
    return customSelect('select * from comT group by date',
        variables: [],
        readsFrom: {
          comT,
        }).map(comT.mapFromRow);
  }

  Selectable<ComTData> getComTByGroupId() {
    return customSelect('select * from comT group by id',
        variables: [],
        readsFrom: {
          comT,
        }).map(comT.mapFromRow);
  }

  Future<int> insertComT(int? comE, String? comEName, int? comF,
      String? comFName, double? CommA, DateTime? date) {
    return customInsert(
      'insert into comT(comE,comEName,comF,comFName,CommA,date) values ( :comE ,:comEName, :comF ,:comFName, :CommA,:date)',
      variables: [
        Variable<int?>(comE),
        Variable<String?>(comEName),
        Variable<int?>(comF),
        Variable<String?>(comFName),
        Variable<double?>(CommA),
        Variable<DateTime?>(date)
      ],
      updates: {comT},
    );
  }

  Future<int> insertUsers(String? name, int? phoneNo, int? ref, DateTime? date,
      int? ref2, int? ref3, int? ref4, int? ref5) {
    return customInsert(
      'insert into users (name,phoneNo,ref_id1,joining_date,ref_id2,ref_id3,ref_id4,ref_id5,com) values ( :name, :phoneNo ,:ref ,:date, :ref2, :ref3, :ref4, :ref5,0)',
      variables: [
        Variable<String?>(name),
        Variable<int?>(phoneNo),
        Variable<int?>(ref),
        Variable<DateTime?>(date),
        Variable<int?>(ref2),
        Variable<int?>(ref3),
        Variable<int?>(ref4),
        Variable<int?>(ref5)
      ],
      updates: {users},
    );
  }

  Selectable<User> getUsers() {
    return customSelect('select * from users', variables: [], readsFrom: {
      users,
    }).map(users.mapFromRow);
  }

  Selectable<User> getUsersByHighCom() {
    return customSelect('select * from users order by com desc',
        variables: [],
        readsFrom: {
          users,
        }).map(users.mapFromRow);
  }

  Selectable<GetReferByIdResult> getReferById(int? ref) {
    return customSelect(
        'select ref_id1, ref_id2, ref_id3, ref_id4, ref_id5 from users where customer_id = :ref',
        variables: [
          Variable<int?>(ref)
        ],
        readsFrom: {
          users,
        }).map((QueryRow row) {
      return GetReferByIdResult(
        refId1: row.read<int?>('ref_id1'),
        refId2: row.read<int?>('ref_id2'),
        refId3: row.read<int?>('ref_id3'),
        refId4: row.read<int?>('ref_id4'),
        refId5: row.read<int?>('ref_id5'),
      );
    });
  }

  Selectable<GetReferByPhoneResult> getReferByPhone(int? ph) {
    return customSelect(
        'select ref_id1, ref_id2, ref_id3, ref_id4, ref_id5 from users where phoneNo = :ph',
        variables: [
          Variable<int?>(ph)
        ],
        readsFrom: {
          users,
        }).map((QueryRow row) {
      return GetReferByPhoneResult(
        refId1: row.read<int?>('ref_id1'),
        refId2: row.read<int?>('ref_id2'),
        refId3: row.read<int?>('ref_id3'),
        refId4: row.read<int?>('ref_id4'),
        refId5: row.read<int?>('ref_id5'),
      );
    });
  }

  Selectable<User> getUserByDate() {
    return customSelect('select * from users order by joining_date',
        variables: [],
        readsFrom: {
          users,
        }).map(users.mapFromRow);
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [users, comT, paidCom, orderp];
}

class GetComTjoinUsersResult {
  final int? id;
  final int? comE;
  final String? comEName;
  final int? comF;
  final String? comFName;
  final double? commA;
  final DateTime? date;
  final int? customerId;
  final String? name;
  final DateTime? joiningDate;
  final int? phoneNo;
  final int? refId1;
  final int? refId2;
  final int? refId3;
  final int? refId4;
  final int? refId5;
  final double? com;
  GetComTjoinUsersResult({
    this.id,
    this.comE,
    this.comEName,
    this.comF,
    this.comFName,
    this.commA,
    this.date,
    this.customerId,
    this.name,
    this.joiningDate,
    this.phoneNo,
    this.refId1,
    this.refId2,
    this.refId3,
    this.refId4,
    this.refId5,
    this.com,
  });
}

class GetReferByIdResult {
  final int? refId1;
  final int? refId2;
  final int? refId3;
  final int? refId4;
  final int? refId5;
  GetReferByIdResult({
    this.refId1,
    this.refId2,
    this.refId3,
    this.refId4,
    this.refId5,
  });
}

class GetReferByPhoneResult {
  final int? refId1;
  final int? refId2;
  final int? refId3;
  final int? refId4;
  final int? refId5;
  GetReferByPhoneResult({
    this.refId1,
    this.refId2,
    this.refId3,
    this.refId4,
    this.refId5,
  });
}
