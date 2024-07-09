import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NutricaoRecord extends FirestoreRecord {
  NutricaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "like" field.
  bool? _like;
  bool get like => _like ?? false;
  bool hasLike() => _like != null;

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

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  bool hasLogradouro() => _logradouro != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "docprof" field.
  String? _docprof;
  String get docprof => _docprof ?? '';
  bool hasDocprof() => _docprof != null;

  // "especialidade" field.
  String? _especialidade;
  String get especialidade => _especialidade ?? '';
  bool hasEspecialidade() => _especialidade != null;

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

  // "plano" field.
  String? _plano;
  String get plano => _plano ?? '';
  bool hasPlano() => _plano != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _desc = snapshotData['desc'] as String?;
    _img = snapshotData['img'] as String?;
    _like = snapshotData['like'] as bool?;
    _rg = snapshotData['rg'] as String?;
    _cep = snapshotData['cep'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _logradouro = snapshotData['logradouro'] as String?;
    _numero = snapshotData['numero'] as String?;
    _email = snapshotData['email'] as String?;
    _docprof = snapshotData['docprof'] as String?;
    _especialidade = snapshotData['especialidade'] as String?;
    _datanasc = snapshotData['datanasc'] as String?;
    _numerocasa = snapshotData['numerocasa'] as String?;
    _nomeprof = snapshotData['nomeprof'] as String?;
    _plano = snapshotData['plano'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nutricao');

  static Stream<NutricaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NutricaoRecord.fromSnapshot(s));

  static Future<NutricaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NutricaoRecord.fromSnapshot(s));

  static NutricaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NutricaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NutricaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NutricaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NutricaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NutricaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNutricaoRecordData({
  String? nome,
  String? desc,
  String? img,
  bool? like,
  String? rg,
  String? cep,
  String? cpf,
  String? bairro,
  String? cidade,
  String? logradouro,
  String? numero,
  String? email,
  String? docprof,
  String? especialidade,
  String? datanasc,
  String? numerocasa,
  String? nomeprof,
  String? plano,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'desc': desc,
      'img': img,
      'like': like,
      'rg': rg,
      'cep': cep,
      'cpf': cpf,
      'bairro': bairro,
      'cidade': cidade,
      'logradouro': logradouro,
      'numero': numero,
      'email': email,
      'docprof': docprof,
      'especialidade': especialidade,
      'datanasc': datanasc,
      'numerocasa': numerocasa,
      'nomeprof': nomeprof,
      'plano': plano,
    }.withoutNulls,
  );

  return firestoreData;
}

class NutricaoRecordDocumentEquality implements Equality<NutricaoRecord> {
  const NutricaoRecordDocumentEquality();

  @override
  bool equals(NutricaoRecord? e1, NutricaoRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.desc == e2?.desc &&
        e1?.img == e2?.img &&
        e1?.like == e2?.like &&
        e1?.rg == e2?.rg &&
        e1?.cep == e2?.cep &&
        e1?.cpf == e2?.cpf &&
        e1?.bairro == e2?.bairro &&
        e1?.cidade == e2?.cidade &&
        e1?.logradouro == e2?.logradouro &&
        e1?.numero == e2?.numero &&
        e1?.email == e2?.email &&
        e1?.docprof == e2?.docprof &&
        e1?.especialidade == e2?.especialidade &&
        e1?.datanasc == e2?.datanasc &&
        e1?.numerocasa == e2?.numerocasa &&
        e1?.nomeprof == e2?.nomeprof &&
        e1?.plano == e2?.plano;
  }

  @override
  int hash(NutricaoRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.desc,
        e?.img,
        e?.like,
        e?.rg,
        e?.cep,
        e?.cpf,
        e?.bairro,
        e?.cidade,
        e?.logradouro,
        e?.numero,
        e?.email,
        e?.docprof,
        e?.especialidade,
        e?.datanasc,
        e?.numerocasa,
        e?.nomeprof,
        e?.plano
      ]);

  @override
  bool isValidKey(Object? o) => o is NutricaoRecord;
}
