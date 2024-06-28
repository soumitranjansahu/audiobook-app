import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewRecord extends FirestoreRecord {
  ReviewRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "display_name" field.
  DocumentReference? _displayName;
  DocumentReference? get displayName => _displayName;
  bool hasDisplayName() => _displayName != null;

  // "review" field.
  String? _review;
  String get review => _review ?? '';
  bool hasReview() => _review != null;

  // "Rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as DocumentReference?;
    _review = snapshotData['review'] as String?;
    _rating = castToType<int>(snapshotData['Rating']);
    _date = snapshotData['Date'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Review')
          : FirebaseFirestore.instance.collectionGroup('Review');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Review').doc(id);

  static Stream<ReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewRecord.fromSnapshot(s));

  static Future<ReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewRecord.fromSnapshot(s));

  static ReviewRecord fromSnapshot(DocumentSnapshot snapshot) => ReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewRecordData({
  DocumentReference? displayName,
  String? review,
  int? rating,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'review': review,
      'Rating': rating,
      'Date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewRecordDocumentEquality implements Equality<ReviewRecord> {
  const ReviewRecordDocumentEquality();

  @override
  bool equals(ReviewRecord? e1, ReviewRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.review == e2?.review &&
        e1?.rating == e2?.rating &&
        e1?.date == e2?.date;
  }

  @override
  int hash(ReviewRecord? e) => const ListEquality()
      .hash([e?.displayName, e?.review, e?.rating, e?.date]);

  @override
  bool isValidKey(Object? o) => o is ReviewRecord;
}
