import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AudioboookRecord extends FirestoreRecord {
  AudioboookRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "episodes" field.
  List<String>? _episodes;
  List<String> get episodes => _episodes ?? const [];
  bool hasEpisodes() => _episodes != null;

  // "authername" field.
  String? _authername;
  String get authername => _authername ?? '';
  bool hasAuthername() => _authername != null;

  // "audiobookid" field.
  int? _audiobookid;
  int get audiobookid => _audiobookid ?? 0;
  bool hasAudiobookid() => _audiobookid != null;

  // "coverphoto" field.
  String? _coverphoto;
  String get coverphoto => _coverphoto ?? '';
  bool hasCoverphoto() => _coverphoto != null;

  // "top10" field.
  bool? _top10;
  bool get top10 => _top10 ?? false;
  bool hasTop10() => _top10 != null;

  // "episodeint" field.
  List<int>? _episodeint;
  List<int> get episodeint => _episodeint ?? const [];
  bool hasEpisodeint() => _episodeint != null;

  // "dailyrec" field.
  bool? _dailyrec;
  bool get dailyrec => _dailyrec ?? false;
  bool hasDailyrec() => _dailyrec != null;

  // "Episodename" field.
  List<String>? _episodename;
  List<String> get episodename => _episodename ?? const [];
  bool hasEpisodename() => _episodename != null;

  // "rating" field.
  List<int>? _rating;
  List<int> get rating => _rating ?? const [];
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _category = snapshotData['category'] as String?;
    _episodes = getDataList(snapshotData['episodes']);
    _authername = snapshotData['authername'] as String?;
    _audiobookid = castToType<int>(snapshotData['audiobookid']);
    _coverphoto = snapshotData['coverphoto'] as String?;
    _top10 = snapshotData['top10'] as bool?;
    _episodeint = getDataList(snapshotData['episodeint']);
    _dailyrec = snapshotData['dailyrec'] as bool?;
    _episodename = getDataList(snapshotData['Episodename']);
    _rating = getDataList(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('audioboook');

  static Stream<AudioboookRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AudioboookRecord.fromSnapshot(s));

  static Future<AudioboookRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AudioboookRecord.fromSnapshot(s));

  static AudioboookRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AudioboookRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AudioboookRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AudioboookRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AudioboookRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AudioboookRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAudioboookRecordData({
  String? name,
  String? description,
  String? category,
  String? authername,
  int? audiobookid,
  String? coverphoto,
  bool? top10,
  bool? dailyrec,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'category': category,
      'authername': authername,
      'audiobookid': audiobookid,
      'coverphoto': coverphoto,
      'top10': top10,
      'dailyrec': dailyrec,
    }.withoutNulls,
  );

  return firestoreData;
}

class AudioboookRecordDocumentEquality implements Equality<AudioboookRecord> {
  const AudioboookRecordDocumentEquality();

  @override
  bool equals(AudioboookRecord? e1, AudioboookRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.category == e2?.category &&
        listEquality.equals(e1?.episodes, e2?.episodes) &&
        e1?.authername == e2?.authername &&
        e1?.audiobookid == e2?.audiobookid &&
        e1?.coverphoto == e2?.coverphoto &&
        e1?.top10 == e2?.top10 &&
        listEquality.equals(e1?.episodeint, e2?.episodeint) &&
        e1?.dailyrec == e2?.dailyrec &&
        listEquality.equals(e1?.episodename, e2?.episodename) &&
        listEquality.equals(e1?.rating, e2?.rating);
  }

  @override
  int hash(AudioboookRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.category,
        e?.episodes,
        e?.authername,
        e?.audiobookid,
        e?.coverphoto,
        e?.top10,
        e?.episodeint,
        e?.dailyrec,
        e?.episodename,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is AudioboookRecord;
}
