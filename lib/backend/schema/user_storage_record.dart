import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStorageRecord extends FirestoreRecord {
  UserStorageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  void _initializeFields() {
    _images = snapshotData['Images'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userStorage');

  static Stream<UserStorageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserStorageRecord.fromSnapshot(s));

  static Future<UserStorageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserStorageRecord.fromSnapshot(s));

  static UserStorageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserStorageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserStorageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserStorageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserStorageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserStorageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserStorageRecordData({
  String? images,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Images': images,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserStorageRecordDocumentEquality implements Equality<UserStorageRecord> {
  const UserStorageRecordDocumentEquality();

  @override
  bool equals(UserStorageRecord? e1, UserStorageRecord? e2) {
    return e1?.images == e2?.images;
  }

  @override
  int hash(UserStorageRecord? e) => const ListEquality().hash([e?.images]);

  @override
  bool isValidKey(Object? o) => o is UserStorageRecord;
}
