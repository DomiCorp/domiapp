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

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "rg" field.
  String? _rg;
  String get rg => _rg ?? '';
  bool hasRg() => _rg != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  bool hasLogradouro() => _logradouro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "docprof" field.
  String? _docprof;
  String get docprof => _docprof ?? '';
  bool hasDocprof() => _docprof != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "especialidade" field.
  String? _especialidade;
  String get especialidade => _especialidade ?? '';
  bool hasEspecialidade() => _especialidade != null;

  // "datanasc" field.
  String? _datanasc;
  String get datanasc => _datanasc ?? '';
  bool hasDatanasc() => _datanasc != null;

  // "profuserid" field.
  String? _profuserid;
  String get profuserid => _profuserid ?? '';
  bool hasProfuserid() => _profuserid != null;

  // "numerocasa" field.
  String? _numerocasa;
  String get numerocasa => _numerocasa ?? '';
  bool hasNumerocasa() => _numerocasa != null;

  // "nomeprof" field.
  String? _nomeprof;
  String get nomeprof => _nomeprof ?? '';
  bool hasNomeprof() => _nomeprof != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _email = snapshotData['email'] as String?;
    _numero = snapshotData['numero'] as String?;
    _rg = snapshotData['rg'] as String?;
    _cep = snapshotData['cep'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _logradouro = snapshotData['logradouro'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _desc = snapshotData['desc'] as String?;
    _docprof = snapshotData['docprof'] as String?;
    _img = snapshotData['img'] as String?;
    _especialidade = snapshotData['especialidade'] as String?;
    _datanasc = snapshotData['datanasc'] as String?;
    _profuserid = snapshotData['profuserid'] as String?;
    _numerocasa = snapshotData['numerocasa'] as String?;
    _nomeprof = snapshotData['nomeprof'] as String?;
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
  String? nome,
  String? email,
  String? numero,
  String? rg,
  String? cep,
  String? cpf,
  String? bairro,
  String? logradouro,
  String? cidade,
  String? desc,
  String? docprof,
  String? img,
  String? especialidade,
  String? datanasc,
  String? profuserid,
  String? numerocasa,
  String? nomeprof,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'email': email,
      'numero': numero,
      'rg': rg,
      'cep': cep,
      'cpf': cpf,
      'bairro': bairro,
      'logradouro': logradouro,
      'cidade': cidade,
      'desc': desc,
      'docprof': docprof,
      'img': img,
      'especialidade': especialidade,
      'datanasc': datanasc,
      'profuserid': profuserid,
      'numerocasa': numerocasa,
      'nomeprof': nomeprof,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicosRecordDocumentEquality implements Equality<MedicosRecord> {
  const MedicosRecordDocumentEquality();

  @override
  bool equals(MedicosRecord? e1, MedicosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.email == e2?.email &&
        e1?.numero == e2?.numero &&
        e1?.rg == e2?.rg &&
        e1?.cep == e2?.cep &&
        e1?.cpf == e2?.cpf &&
        e1?.bairro == e2?.bairro &&
        e1?.logradouro == e2?.logradouro &&
        e1?.cidade == e2?.cidade &&
        e1?.desc == e2?.desc &&
        e1?.docprof == e2?.docprof &&
        e1?.img == e2?.img &&
        e1?.especialidade == e2?.especialidade &&
        e1?.datanasc == e2?.datanasc &&
        e1?.profuserid == e2?.profuserid &&
        e1?.numerocasa == e2?.numerocasa &&
        e1?.nomeprof == e2?.nomeprof;
  }

  @override
  int hash(MedicosRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.email,
        e?.numero,
        e?.rg,
        e?.cep,
        e?.cpf,
        e?.bairro,
        e?.logradouro,
        e?.cidade,
        e?.desc,
        e?.docprof,
        e?.img,
        e?.especialidade,
        e?.datanasc,
        e?.profuserid,
        e?.numerocasa,
        e?.nomeprof
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicosRecord;
}
