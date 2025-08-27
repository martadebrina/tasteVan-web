// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RatingsStruct extends FFFirebaseStruct {
  RatingsStruct({
    double? rate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _rate = rate,
        super(firestoreUtilData);

  // "rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  set rate(double? val) => _rate = val;

  void incrementRate(double amount) => rate = rate + amount;

  bool hasRate() => _rate != null;

  static RatingsStruct fromMap(Map<String, dynamic> data) => RatingsStruct(
        rate: castToType<double>(data['rate']),
      );

  static RatingsStruct? maybeFromMap(dynamic data) =>
      data is Map ? RatingsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'rate': _rate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rate': serializeParam(
          _rate,
          ParamType.double,
        ),
      }.withoutNulls;

  static RatingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      RatingsStruct(
        rate: deserializeParam(
          data['rate'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'RatingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RatingsStruct && rate == other.rate;
  }

  @override
  int get hashCode => const ListEquality().hash([rate]);
}

RatingsStruct createRatingsStruct({
  double? rate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RatingsStruct(
      rate: rate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RatingsStruct? updateRatingsStruct(
  RatingsStruct? ratings, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ratings
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRatingsStructData(
  Map<String, dynamic> firestoreData,
  RatingsStruct? ratings,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ratings == null) {
    return;
  }
  if (ratings.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ratings.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ratingsData = getRatingsFirestoreData(ratings, forFieldValue);
  final nestedData = ratingsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ratings.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRatingsFirestoreData(
  RatingsStruct? ratings, [
  bool forFieldValue = false,
]) {
  if (ratings == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ratings.toMap());

  // Add any Firestore field values
  ratings.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRatingsListFirestoreData(
  List<RatingsStruct>? ratingss,
) =>
    ratingss?.map((e) => getRatingsFirestoreData(e, true)).toList() ?? [];
