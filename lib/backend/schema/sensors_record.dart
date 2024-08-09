import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SensorsRecord extends FirestoreRecord {
  SensorsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "vrs_pltb" field.
  int? _vrsPltb;
  int get vrsPltb => _vrsPltb ?? 0;
  bool hasVrsPltb() => _vrsPltb != null;

  // "vst_pltb" field.
  int? _vstPltb;
  int get vstPltb => _vstPltb ?? 0;
  bool hasVstPltb() => _vstPltb != null;

  // "vtr_pltb" field.
  int? _vtrPltb;
  int get vtrPltb => _vtrPltb ?? 0;
  bool hasVtrPltb() => _vtrPltb != null;

  // "irs_pltb" field.
  int? _irsPltb;
  int get irsPltb => _irsPltb ?? 0;
  bool hasIrsPltb() => _irsPltb != null;

  // "ist_pltb" field.
  int? _istPltb;
  int get istPltb => _istPltb ?? 0;
  bool hasIstPltb() => _istPltb != null;

  // "itr_pltb" field.
  int? _itrPltb;
  int get itrPltb => _itrPltb ?? 0;
  bool hasItrPltb() => _itrPltb != null;

  // "v_plts" field.
  int? _vPlts;
  int get vPlts => _vPlts ?? 0;
  bool hasVPlts() => _vPlts != null;

  // "i_plts" field.
  int? _iPlts;
  int get iPlts => _iPlts ?? 0;
  bool hasIPlts() => _iPlts != null;

  // "v_inverter" field.
  int? _vInverter;
  int get vInverter => _vInverter ?? 0;
  bool hasVInverter() => _vInverter != null;

  // "i_inverter" field.
  int? _iInverter;
  int get iInverter => _iInverter ?? 0;
  bool hasIInverter() => _iInverter != null;

  // "v_baterai" field.
  int? _vBaterai;
  int get vBaterai => _vBaterai ?? 0;
  bool hasVBaterai() => _vBaterai != null;

  // "i_baterai" field.
  int? _iBaterai;
  int get iBaterai => _iBaterai ?? 0;
  bool hasIBaterai() => _iBaterai != null;

  // "soc_baterai" field.
  int? _socBaterai;
  int get socBaterai => _socBaterai ?? 0;
  bool hasSocBaterai() => _socBaterai != null;

  // "v_pln" field.
  int? _vPln;
  int get vPln => _vPln ?? 0;
  bool hasVPln() => _vPln != null;

  // "i_pln" field.
  int? _iPln;
  int get iPln => _iPln ?? 0;
  bool hasIPln() => _iPln != null;

  // "mode_aktif" field.
  String? _modeAktif;
  String get modeAktif => _modeAktif ?? '';
  bool hasModeAktif() => _modeAktif != null;

  // "sistem_re" field.
  int? _sistemRe;
  int get sistemRe => _sistemRe ?? 0;
  bool hasSistemRe() => _sistemRe != null;

  // "sistem_pln" field.
  int? _sistemPln;
  int get sistemPln => _sistemPln ?? 0;
  bool hasSistemPln() => _sistemPln != null;

  // "presentase_daya" field.
  int? _presentaseDaya;
  int get presentaseDaya => _presentaseDaya ?? 0;
  bool hasPresentaseDaya() => _presentaseDaya != null;

  void _initializeFields() {
    _vrsPltb = castToType<int>(snapshotData['vrs_pltb']);
    _vstPltb = castToType<int>(snapshotData['vst_pltb']);
    _vtrPltb = castToType<int>(snapshotData['vtr_pltb']);
    _irsPltb = castToType<int>(snapshotData['irs_pltb']);
    _istPltb = castToType<int>(snapshotData['ist_pltb']);
    _itrPltb = castToType<int>(snapshotData['itr_pltb']);
    _vPlts = castToType<int>(snapshotData['v_plts']);
    _iPlts = castToType<int>(snapshotData['i_plts']);
    _vInverter = castToType<int>(snapshotData['v_inverter']);
    _iInverter = castToType<int>(snapshotData['i_inverter']);
    _vBaterai = castToType<int>(snapshotData['v_baterai']);
    _iBaterai = castToType<int>(snapshotData['i_baterai']);
    _socBaterai = castToType<int>(snapshotData['soc_baterai']);
    _vPln = castToType<int>(snapshotData['v_pln']);
    _iPln = castToType<int>(snapshotData['i_pln']);
    _modeAktif = snapshotData['mode_aktif'] as String?;
    _sistemRe = castToType<int>(snapshotData['sistem_re']);
    _sistemPln = castToType<int>(snapshotData['sistem_pln']);
    _presentaseDaya = castToType<int>(snapshotData['presentase_daya']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sensors');

  static Stream<SensorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SensorsRecord.fromSnapshot(s));

  static Future<SensorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SensorsRecord.fromSnapshot(s));

  static SensorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SensorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SensorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SensorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SensorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SensorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSensorsRecordData({
  int? vrsPltb,
  int? vstPltb,
  int? vtrPltb,
  int? irsPltb,
  int? istPltb,
  int? itrPltb,
  int? vPlts,
  int? iPlts,
  int? vInverter,
  int? iInverter,
  int? vBaterai,
  int? iBaterai,
  int? socBaterai,
  int? vPln,
  int? iPln,
  String? modeAktif,
  int? sistemRe,
  int? sistemPln,
  int? presentaseDaya,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vrs_pltb': vrsPltb,
      'vst_pltb': vstPltb,
      'vtr_pltb': vtrPltb,
      'irs_pltb': irsPltb,
      'ist_pltb': istPltb,
      'itr_pltb': itrPltb,
      'v_plts': vPlts,
      'i_plts': iPlts,
      'v_inverter': vInverter,
      'i_inverter': iInverter,
      'v_baterai': vBaterai,
      'i_baterai': iBaterai,
      'soc_baterai': socBaterai,
      'v_pln': vPln,
      'i_pln': iPln,
      'mode_aktif': modeAktif,
      'sistem_re': sistemRe,
      'sistem_pln': sistemPln,
      'presentase_daya': presentaseDaya,
    }.withoutNulls,
  );

  return firestoreData;
}

class SensorsRecordDocumentEquality implements Equality<SensorsRecord> {
  const SensorsRecordDocumentEquality();

  @override
  bool equals(SensorsRecord? e1, SensorsRecord? e2) {
    return e1?.vrsPltb == e2?.vrsPltb &&
        e1?.vstPltb == e2?.vstPltb &&
        e1?.vtrPltb == e2?.vtrPltb &&
        e1?.irsPltb == e2?.irsPltb &&
        e1?.istPltb == e2?.istPltb &&
        e1?.itrPltb == e2?.itrPltb &&
        e1?.vPlts == e2?.vPlts &&
        e1?.iPlts == e2?.iPlts &&
        e1?.vInverter == e2?.vInverter &&
        e1?.iInverter == e2?.iInverter &&
        e1?.vBaterai == e2?.vBaterai &&
        e1?.iBaterai == e2?.iBaterai &&
        e1?.socBaterai == e2?.socBaterai &&
        e1?.vPln == e2?.vPln &&
        e1?.iPln == e2?.iPln &&
        e1?.modeAktif == e2?.modeAktif &&
        e1?.sistemRe == e2?.sistemRe &&
        e1?.sistemPln == e2?.sistemPln &&
        e1?.presentaseDaya == e2?.presentaseDaya;
  }

  @override
  int hash(SensorsRecord? e) => const ListEquality().hash([
        e?.vrsPltb,
        e?.vstPltb,
        e?.vtrPltb,
        e?.irsPltb,
        e?.istPltb,
        e?.itrPltb,
        e?.vPlts,
        e?.iPlts,
        e?.vInverter,
        e?.iInverter,
        e?.vBaterai,
        e?.iBaterai,
        e?.socBaterai,
        e?.vPln,
        e?.iPln,
        e?.modeAktif,
        e?.sistemRe,
        e?.sistemPln,
        e?.presentaseDaya
      ]);

  @override
  bool isValidKey(Object? o) => o is SensorsRecord;
}
