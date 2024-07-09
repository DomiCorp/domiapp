import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FisioterapeutaRecord extends FirestoreRecord {
  FisioterapeutaRecord._(
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

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  bool hasLogradouro() => _logradouro != null;

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

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "especialidade" field.
  String? _especialidade;
  String get especialidade => _especialidade ?? '';
  bool hasEspecialidade() => _especialidade != null;

  // "docprof" field.
  String? _docprof;
  String get docprof => _docprof ?? '';
  bool hasDocprof() => _docprof != null;

  // "datanasc" field.
  String? _datanasc;
  String get datanasc => _datanasc ?? '';
  bool hasDatanasc() => _datanasc != null;

  // "numerocasa" field.
  String? _numerocasa;
  String get numerocasa => _numerocasa ?? '';
  bool hasNumerocasa() => _numerocasa != null;

  // "nomeprof" field.
  String? _nomeprof;
  String get nomeprof => _nomeprof ?? '';
  bool hasNomeprof() => _nomeprof != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "plano" field.
  String? _plano;
  String get plano => _plano ?? '';
  bool hasPlano() => _plano != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _email = snapshotData['email'] as String?;
    _numero = snapshotData['numero'] as String?;
    _rg = snapshotData['rg'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _cep = snapshotData['cep'] as String?;
    _logradouro = snapshotData['logradouro'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _desc = snapshotData['desc'] as String?;
    _img = snapshotData['img'] as String?;
    _especialidade = snapshotData['especialidade'] as String?;
    _docprof = snapshotData['docprof'] as String?;
    _datanasc = snapshotData['datanasc'] as String?;
    _numerocasa = snapshotData['numerocasa'] as String?;
    _nomeprof = snapshotData['nomeprof'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _plano = snapshotData['plano'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fisioterapeuta');

  static Stream<FisioterapeutaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FisioterapeutaRecord.fromSnapshot(s));

  static Future<FisioterapeutaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FisioterapeutaRecord.fromSnapshot(s));

  static FisioterapeutaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FisioterapeutaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FisioterapeutaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FisioterapeutaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FisioterapeutaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FisioterapeutaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFisioterapeutaRecordData({
  String? nome,
  String? email,
  String? numero,
  String? rg,
  String? cpf,
  String? cep,
  String? logradouro,
  String? bairro,
  String? cidade,
  String? desc,
  String? img,
  String? especialidade,
  String? docprof,
  String? datanasc,
  String? numerocasa,
  String? nomeprof,
  DocumentReference? userId,
  String? plano,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'email': email,
      'numero': numero,
      'rg': rg,
      'cpf': cpf,
      'cep': cep,
      'logradouro': logradouro,
      'bairro': bairro,
      'cidade': cidade,
      'desc': desc,
      'img': img,
      'especialidade': especialidade,
      'docprof': docprof,
      'datanasc': datanasc,
      'numerocasa': numerocasa,
      'nomeprof': nomeprof,
      'userId': userId,
      'plano': plano,
    }.withoutNulls,
  );

  return firestoreData;
}

class FisioterapeutaRecordDocumentEquality
    implements Equality<FisioterapeutaRecord> {
  const FisioterapeutaRecordDocumentEquality();

  @override
  bool equals(FisioterapeutaRecord? e1, FisioterapeutaRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.email == e2?.email &&
        e1?.numero == e2?.numero &&
        e1?.rg == e2?.rg &&
        e1?.cpf == e2?.cpf &&
        e1?.cep == e2?.cep &&
        e1?.logradouro == e2?.logradouro &&
        e1?.bairro == e2?.bairro &&
        e1?.cidade == e2?.cidade &&
        e1?.desc == e2?.desc &&
        e1?.img == e2?.img &&
        e1?.especialidade == e2?.especialidade &&
        e1?.docprof == e2?.docprof &&
        e1?.datanasc == e2?.datanasc &&
        e1?.numerocasa == e2?.numerocasa &&
        e1?.nomeprof == e2?.nomeprof &&
        e1?.userId == e2?.userId &&
        e1?.plano == e2?.plano;
  }

  @override
  int hash(FisioterapeutaRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.email,
        e?.numero,
        e?.rg,
        e?.cpf,
        e?.cep,
        e?.logradouro,
        e?.bairro,
        e?.cidade,
        e?.desc,
        e?.img,
        e?.especialidade,
        e?.docprof,
        e?.datanasc,
        e?.numerocasa,
        e?.nomeprof,
        e?.userId,
        e?.plano
      ]);

  @override
  bool isValidKey(Object? o) => o is FisioterapeutaRecord;
}
