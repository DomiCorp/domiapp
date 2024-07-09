import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresasRecord extends FirestoreRecord {
  EmpresasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "numerolocal" field.
  String? _numerolocal;
  String get numerolocal => _numerolocal ?? '';
  bool hasNumerolocal() => _numerolocal != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "horarios" field.
  String? _horarios;
  String get horarios => _horarios ?? '';
  bool hasHorarios() => _horarios != null;

  // "servicos" field.
  String? _servicos;
  String get servicos => _servicos ?? '';
  bool hasServicos() => _servicos != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "whatsapp" field.
  String? _whatsapp;
  String get whatsapp => _whatsapp ?? '';
  bool hasWhatsapp() => _whatsapp != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "twitter" field.
  String? _twitter;
  String get twitter => _twitter ?? '';
  bool hasTwitter() => _twitter != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "img1" field.
  String? _img1;
  String get img1 => _img1 ?? '';
  bool hasImg1() => _img1 != null;

  // "img2" field.
  String? _img2;
  String get img2 => _img2 ?? '';
  bool hasImg2() => _img2 != null;

  // "img3" field.
  String? _img3;
  String get img3 => _img3 ?? '';
  bool hasImg3() => _img3 != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _rua = snapshotData['rua'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _numerolocal = snapshotData['numerolocal'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _estado = snapshotData['estado'] as String?;
    _cep = snapshotData['cep'] as String?;
    _horarios = snapshotData['horarios'] as String?;
    _servicos = snapshotData['servicos'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _whatsapp = snapshotData['whatsapp'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _twitter = snapshotData['twitter'] as String?;
    _img = snapshotData['img'] as String?;
    _img1 = snapshotData['img1'] as String?;
    _img2 = snapshotData['img2'] as String?;
    _img3 = snapshotData['img3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empresas');

  static Stream<EmpresasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpresasRecord.fromSnapshot(s));

  static Future<EmpresasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpresasRecord.fromSnapshot(s));

  static EmpresasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpresasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpresasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpresasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpresasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpresasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpresasRecordData({
  String? nome,
  String? rua,
  String? bairro,
  String? numerolocal,
  String? cidade,
  String? estado,
  String? cep,
  String? horarios,
  String? servicos,
  String? telefone,
  String? whatsapp,
  String? instagram,
  String? facebook,
  String? twitter,
  String? img,
  String? img1,
  String? img2,
  String? img3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'rua': rua,
      'bairro': bairro,
      'numerolocal': numerolocal,
      'cidade': cidade,
      'estado': estado,
      'cep': cep,
      'horarios': horarios,
      'servicos': servicos,
      'telefone': telefone,
      'whatsapp': whatsapp,
      'instagram': instagram,
      'facebook': facebook,
      'twitter': twitter,
      'img': img,
      'img1': img1,
      'img2': img2,
      'img3': img3,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpresasRecordDocumentEquality implements Equality<EmpresasRecord> {
  const EmpresasRecordDocumentEquality();

  @override
  bool equals(EmpresasRecord? e1, EmpresasRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.rua == e2?.rua &&
        e1?.bairro == e2?.bairro &&
        e1?.numerolocal == e2?.numerolocal &&
        e1?.cidade == e2?.cidade &&
        e1?.estado == e2?.estado &&
        e1?.cep == e2?.cep &&
        e1?.horarios == e2?.horarios &&
        e1?.servicos == e2?.servicos &&
        e1?.telefone == e2?.telefone &&
        e1?.whatsapp == e2?.whatsapp &&
        e1?.instagram == e2?.instagram &&
        e1?.facebook == e2?.facebook &&
        e1?.twitter == e2?.twitter &&
        e1?.img == e2?.img &&
        e1?.img1 == e2?.img1 &&
        e1?.img2 == e2?.img2 &&
        e1?.img3 == e2?.img3;
  }

  @override
  int hash(EmpresasRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.rua,
        e?.bairro,
        e?.numerolocal,
        e?.cidade,
        e?.estado,
        e?.cep,
        e?.horarios,
        e?.servicos,
        e?.telefone,
        e?.whatsapp,
        e?.instagram,
        e?.facebook,
        e?.twitter,
        e?.img,
        e?.img1,
        e?.img2,
        e?.img3
      ]);

  @override
  bool isValidKey(Object? o) => o is EmpresasRecord;
}
