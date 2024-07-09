import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicosRecord extends FirestoreRecord {
  MedicosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

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

  // "like" field.
  String? _like;
  String get like => _like ?? '';
  bool hasLike() => _like != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "emailprofissional" field.
  String? _emailprofissional;
  String get emailprofissional => _emailprofissional ?? '';
  bool hasEmailprofissional() => _emailprofissional != null;

  // "imgprofissional" field.
  String? _imgprofissional;
  String get imgprofissional => _imgprofissional ?? '';
  bool hasImgprofissional() => _imgprofissional != null;

  // "nomeprofissional" field.
  String? _nomeprofissional;
  String get nomeprofissional => _nomeprofissional ?? '';
  bool hasNomeprofissional() => _nomeprofissional != null;

  // "nomecompleto" field.
  String? _nomecompleto;
  String get nomecompleto => _nomecompleto ?? '';
  bool hasNomecompleto() => _nomecompleto != null;

  // "datanasc" field.
  String? _datanasc;
  String get datanasc => _datanasc ?? '';
  bool hasDatanasc() => _datanasc != null;

  // "numerocasa" field.
  String? _numerocasa;
  String get numerocasa => _numerocasa ?? '';
  bool hasNumerocasa() => _numerocasa != null;

  // "id" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  bool hasId() => _id != null;

  // "docprof" field.
  String? _docprof;
  String get docprof => _docprof ?? '';
  bool hasDocprof() => _docprof != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "plano" field.
  String? _plano;
  String get plano => _plano ?? '';
  bool hasPlano() => _plano != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
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
    _like = snapshotData['like'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _emailprofissional = snapshotData['emailprofissional'] as String?;
    _imgprofissional = snapshotData['imgprofissional'] as String?;
    _nomeprofissional = snapshotData['nomeprofissional'] as String?;
    _nomecompleto = snapshotData['nomecompleto'] as String?;
    _datanasc = snapshotData['datanasc'] as String?;
    _numerocasa = snapshotData['numerocasa'] as String?;
    _id = snapshotData['id'] as DocumentReference?;
    _docprof = snapshotData['docprof'] as String?;
    _img = snapshotData['img'] as String?;
    _plano = snapshotData['plano'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medicos');

  static Stream<MedicosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicosRecord.fromSnapshot(s));

  static Future<MedicosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicosRecord.fromSnapshot(s));

  static MedicosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicosRecordData({
  String? email,
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
  String? like,
  String? tipo,
  String? emailprofissional,
  String? imgprofissional,
  String? nomeprofissional,
  String? nomecompleto,
  String? datanasc,
  String? numerocasa,
  DocumentReference? id,
  String? docprof,
  String? img,
  String? plano,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
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
      'like': like,
      'tipo': tipo,
      'emailprofissional': emailprofissional,
      'imgprofissional': imgprofissional,
      'nomeprofissional': nomeprofissional,
      'nomecompleto': nomecompleto,
      'datanasc': datanasc,
      'numerocasa': numerocasa,
      'id': id,
      'docprof': docprof,
      'img': img,
      'plano': plano,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicosRecordDocumentEquality implements Equality<MedicosRecord> {
  const MedicosRecordDocumentEquality();

  @override
  bool equals(MedicosRecord? e1, MedicosRecord? e2) {
    return e1?.email == e2?.email &&
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
        e1?.like == e2?.like &&
        e1?.tipo == e2?.tipo &&
        e1?.emailprofissional == e2?.emailprofissional &&
        e1?.imgprofissional == e2?.imgprofissional &&
        e1?.nomeprofissional == e2?.nomeprofissional &&
        e1?.nomecompleto == e2?.nomecompleto &&
        e1?.datanasc == e2?.datanasc &&
        e1?.numerocasa == e2?.numerocasa &&
        e1?.id == e2?.id &&
        e1?.docprof == e2?.docprof &&
        e1?.img == e2?.img &&
        e1?.plano == e2?.plano;
  }

  @override
  int hash(MedicosRecord? e) => const ListEquality().hash([
        e?.email,
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
        e?.like,
        e?.tipo,
        e?.emailprofissional,
        e?.imgprofissional,
        e?.nomeprofissional,
        e?.nomecompleto,
        e?.datanasc,
        e?.numerocasa,
        e?.id,
        e?.docprof,
        e?.img,
        e?.plano
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicosRecord;
}
