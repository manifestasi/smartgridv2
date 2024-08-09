import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeeklyUsageRecord extends FirestoreRecord {
  WeeklyUsageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "accumulated_RE" field.
  String? _accumulatedRE;
  String get accumulatedRE => _accumulatedRE ?? '';
  bool hasAccumulatedRE() => _accumulatedRE != null;

  // "accumulated_PLN" field.
  String? _accumulatedPLN;
  String get accumulatedPLN => _accumulatedPLN ?? '';
  bool hasAccumulatedPLN() => _accumulatedPLN != null;

  // "pengeluaran_normal" field.
  String? _pengeluaranNormal;
  String get pengeluaranNormal => _pengeluaranNormal ?? '';
  bool hasPengeluaranNormal() => _pengeluaranNormal != null;

  // "pengeluaran_real" field.
  String? _pengeluaranReal;
  String get pengeluaranReal => _pengeluaranReal ?? '';
  bool hasPengeluaranReal() => _pengeluaranReal != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _accumulatedRE = snapshotData['accumulated_RE'] as String?;
    _accumulatedPLN = snapshotData['accumulated_PLN'] as String?;
    _pengeluaranNormal = snapshotData['pengeluaran_normal'] as String?;
    _pengeluaranReal = snapshotData['pengeluaran_real'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('weekly_usage');

  static Stream<WeeklyUsageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WeeklyUsageRecord.fromSnapshot(s));

  static Future<WeeklyUsageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WeeklyUsageRecord.fromSnapshot(s));

  static WeeklyUsageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WeeklyUsageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WeeklyUsageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WeeklyUsageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WeeklyUsageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WeeklyUsageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWeeklyUsageRecordData({
  String? accumulatedRE,
  String? accumulatedPLN,
  String? pengeluaranNormal,
  String? pengeluaranReal,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'accumulated_RE': accumulatedRE,
      'accumulated_PLN': accumulatedPLN,
      'pengeluaran_normal': pengeluaranNormal,
      'pengeluaran_real': pengeluaranReal,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class WeeklyUsageRecordDocumentEquality implements Equality<WeeklyUsageRecord> {
  const WeeklyUsageRecordDocumentEquality();

  @override
  bool equals(WeeklyUsageRecord? e1, WeeklyUsageRecord? e2) {
    return e1?.accumulatedRE == e2?.accumulatedRE &&
        e1?.accumulatedPLN == e2?.accumulatedPLN &&
        e1?.pengeluaranNormal == e2?.pengeluaranNormal &&
        e1?.pengeluaranReal == e2?.pengeluaranReal &&
        e1?.date == e2?.date;
  }

  @override
  int hash(WeeklyUsageRecord? e) => const ListEquality().hash([
        e?.accumulatedRE,
        e?.accumulatedPLN,
        e?.pengeluaranNormal,
        e?.pengeluaranReal,
        e?.date
      ]);

  @override
  bool isValidKey(Object? o) => o is WeeklyUsageRecord;
}
