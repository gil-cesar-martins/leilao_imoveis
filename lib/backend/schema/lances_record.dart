import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LancesRecord extends FirestoreRecord {
  LancesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "idUsuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  bool hasIdUsuario() => _idUsuario != null;

  // "idCasa" field.
  String? _idCasa;
  String get idCasa => _idCasa ?? '';
  bool hasIdCasa() => _idCasa != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _idUsuario = snapshotData['idUsuario'] as String?;
    _idCasa = snapshotData['idCasa'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
    _nome = snapshotData['nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lances');

  static Stream<LancesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LancesRecord.fromSnapshot(s));

  static Future<LancesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LancesRecord.fromSnapshot(s));

  static LancesRecord fromSnapshot(DocumentSnapshot snapshot) => LancesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LancesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LancesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LancesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LancesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLancesRecordData({
  String? idUsuario,
  String? idCasa,
  double? valor,
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idUsuario': idUsuario,
      'idCasa': idCasa,
      'valor': valor,
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class LancesRecordDocumentEquality implements Equality<LancesRecord> {
  const LancesRecordDocumentEquality();

  @override
  bool equals(LancesRecord? e1, LancesRecord? e2) {
    return e1?.idUsuario == e2?.idUsuario &&
        e1?.idCasa == e2?.idCasa &&
        e1?.valor == e2?.valor &&
        e1?.nome == e2?.nome;
  }

  @override
  int hash(LancesRecord? e) =>
      const ListEquality().hash([e?.idUsuario, e?.idCasa, e?.valor, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is LancesRecord;
}
