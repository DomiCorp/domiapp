import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "rg" field.
  String? _rg;
  String get rg => _rg ?? '';
  bool hasRg() => _rg != null;

  // "lagradouro" field.
  String? _lagradouro;
  String get lagradouro => _lagradouro ?? '';
  bool hasLagradouro() => _lagradouro != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "especialidade" field.
  String? _especialidade;
  String get especialidade => _especialidade ?? '';
  bool hasEspecialidade() => _especialidade != null;

  // "docprof" field.
  String? _docprof;
  String get docprof => _docprof ?? '';
  bool hasDocprof() => _docprof != null;

  // "like" field.
  bool? _like;
  bool get like => _like ?? false;
  bool hasLike() => _like != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "tipo" field.
  bool? _tipo;
  bool get tipo => _tipo ?? false;
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _cep = snapshotData['cep'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _rg = snapshotData['rg'] as String?;
    _lagradouro = snapshotData['lagradouro'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _desc = snapshotData['desc'] as String?;
    _especialidade = snapshotData['especialidade'] as String?;
    _docprof = snapshotData['docprof'] as String?;
    _like = snapshotData['like'] as bool?;
    _img = snapshotData['img'] as String?;
    _tipo = snapshotData['tipo'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
  DateTime? createdTime,
  String? cep,
  String? cpf,
  String? rg,
  String? lagradouro,
  String? bairro,
  String? cidade,
  String? desc,
  String? especialidade,
  String? docprof,
  bool? like,
  String? img,
  bool? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'phone_number': phoneNumber,
      'created_time': createdTime,
      'cep': cep,
      'cpf': cpf,
      'rg': rg,
      'lagradouro': lagradouro,
      'bairro': bairro,
      'cidade': cidade,
      'desc': desc,
      'especialidade': especialidade,
      'docprof': docprof,
      'like': like,
      'img': img,
      'tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdTime == e2?.createdTime &&
        e1?.cep == e2?.cep &&
        e1?.cpf == e2?.cpf &&
        e1?.rg == e2?.rg &&
        e1?.lagradouro == e2?.lagradouro &&
        e1?.bairro == e2?.bairro &&
        e1?.cidade == e2?.cidade &&
        e1?.desc == e2?.desc &&
        e1?.especialidade == e2?.especialidade &&
        e1?.docprof == e2?.docprof &&
        e1?.like == e2?.like &&
        e1?.img == e2?.img &&
        e1?.tipo == e2?.tipo;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.phoneNumber,
        e?.createdTime,
        e?.cep,
        e?.cpf,
        e?.rg,
        e?.lagradouro,
        e?.bairro,
        e?.cidade,
        e?.desc,
        e?.especialidade,
        e?.docprof,
        e?.like,
        e?.img,
        e?.tipo
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
