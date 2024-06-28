import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserrequestRecord extends FirestoreRecord {
  UserrequestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "audiobookrequest" field.
  List<String>? _audiobookrequest;
  List<String> get audiobookrequest => _audiobookrequest ?? const [];
  bool hasAudiobookrequest() => _audiobookrequest != null;

  // "numberphone" field.
  String? _numberphone;
  String get numberphone => _numberphone ?? '';
  bool hasNumberphone() => _numberphone != null;

  // "feturerequest" field.
  List<String>? _feturerequest;
  List<String> get feturerequest => _feturerequest ?? const [];
  bool hasFeturerequest() => _feturerequest != null;

  void _initializeFields() {
    _audiobookrequest = getDataList(snapshotData['audiobookrequest']);
    _numberphone = snapshotData['numberphone'] as String?;
    _feturerequest = getDataList(snapshotData['feturerequest']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userrequest');

  static Stream<UserrequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserrequestRecord.fromSnapshot(s));

  static Future<UserrequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserrequestRecord.fromSnapshot(s));

  static UserrequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserrequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserrequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserrequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserrequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserrequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserrequestRecordData({
  String? numberphone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'numberphone': numberphone,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserrequestRecordDocumentEquality implements Equality<UserrequestRecord> {
  const UserrequestRecordDocumentEquality();

  @override
  bool equals(UserrequestRecord? e1, UserrequestRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.audiobookrequest, e2?.audiobookrequest) &&
        e1?.numberphone == e2?.numberphone &&
        listEquality.equals(e1?.feturerequest, e2?.feturerequest);
  }

  @override
  int hash(UserrequestRecord? e) => const ListEquality()
      .hash([e?.audiobookrequest, e?.numberphone, e?.feturerequest]);

  @override
  bool isValidKey(Object? o) => o is UserrequestRecord;
}
