import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresaRecord extends FirestoreRecord {
  EmpresaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomedaempresa" field.
  String? _nomedaempresa;
  String get nomedaempresa => _nomedaempresa ?? '';
  bool hasNomedaempresa() => _nomedaempresa != null;

  // "descdaempresa" field.
  String? _descdaempresa;
  String get descdaempresa => _descdaempresa ?? '';
  bool hasDescdaempresa() => _descdaempresa != null;

  // "numerodaempresa" field.
  String? _numerodaempresa;
  String get numerodaempresa => _numerodaempresa ?? '';
  bool hasNumerodaempresa() => _numerodaempresa != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "like" field.
  bool? _like;
  bool get like => _like ?? false;
  bool hasLike() => _like != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "img2" field.
  String? _img2;
  String get img2 => _img2 ?? '';
  bool hasImg2() => _img2 != null;

  // "img3" field.
  String? _img3;
  String get img3 => _img3 ?? '';
  bool hasImg3() => _img3 != null;

  // "areadeatuao" field.
  String? _areadeatuao;
  String get areadeatuao => _areadeatuao ?? '';
  bool hasAreadeatuao() => _areadeatuao != null;

  void _initializeFields() {
    _nomedaempresa = snapshotData['nomedaempresa'] as String?;
    _descdaempresa = snapshotData['descdaempresa'] as String?;
    _numerodaempresa = snapshotData['numerodaempresa'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _rua = snapshotData['rua'] as String?;
    _cep = snapshotData['cep'] as String?;
    _like = snapshotData['like'] as bool?;
    _img = snapshotData['img'] as String?;
    _img2 = snapshotData['img2'] as String?;
    _img3 = snapshotData['img3'] as String?;
    _areadeatuao = snapshotData['areadeatuao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empresa');

  static Stream<EmpresaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpresaRecord.fromSnapshot(s));

  static Future<EmpresaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpresaRecord.fromSnapshot(s));

  static EmpresaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpresaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpresaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpresaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpresaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpresaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpresaRecordData({
  String? nomedaempresa,
  String? descdaempresa,
  String? numerodaempresa,
  String? bairro,
  String? cidade,
  String? rua,
  String? cep,
  bool? like,
  String? img,
  String? img2,
  String? img3,
  String? areadeatuao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedaempresa': nomedaempresa,
      'descdaempresa': descdaempresa,
      'numerodaempresa': numerodaempresa,
      'bairro': bairro,
      'cidade': cidade,
      'rua': rua,
      'cep': cep,
      'like': like,
      'img': img,
      'img2': img2,
      'img3': img3,
      'areadeatuao': areadeatuao,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpresaRecordDocumentEquality implements Equality<EmpresaRecord> {
  const EmpresaRecordDocumentEquality();

  @override
  bool equals(EmpresaRecord? e1, EmpresaRecord? e2) {
    return e1?.nomedaempresa == e2?.nomedaempresa &&
        e1?.descdaempresa == e2?.descdaempresa &&
        e1?.numerodaempresa == e2?.numerodaempresa &&
        e1?.bairro == e2?.bairro &&
        e1?.cidade == e2?.cidade &&
        e1?.rua == e2?.rua &&
        e1?.cep == e2?.cep &&
        e1?.like == e2?.like &&
        e1?.img == e2?.img &&
        e1?.img2 == e2?.img2 &&
        e1?.img3 == e2?.img3 &&
        e1?.areadeatuao == e2?.areadeatuao;
  }

  @override
  int hash(EmpresaRecord? e) => const ListEquality().hash([
        e?.nomedaempresa,
        e?.descdaempresa,
        e?.numerodaempresa,
        e?.bairro,
        e?.cidade,
        e?.rua,
        e?.cep,
        e?.like,
        e?.img,
        e?.img2,
        e?.img3,
        e?.areadeatuao
      ]);

  @override
  bool isValidKey(Object? o) => o is EmpresaRecord;
}
