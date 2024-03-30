import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RecetasCompartidasRecord extends FirestoreRecord {
  RecetasCompartidasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fecha_compartido" field.
  DateTime? _fechaCompartido;
  DateTime? get fechaCompartido => _fechaCompartido;
  bool hasFechaCompartido() => _fechaCompartido != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "receta" field.
  DocumentReference? _receta;
  DocumentReference? get receta => _receta;
  bool hasReceta() => _receta != null;

  void _initializeFields() {
    _fechaCompartido = snapshotData['fecha_compartido'] as DateTime?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _receta = snapshotData['receta'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recetas_compartidas');

  static Stream<RecetasCompartidasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecetasCompartidasRecord.fromSnapshot(s));

  static Future<RecetasCompartidasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RecetasCompartidasRecord.fromSnapshot(s));

  static RecetasCompartidasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecetasCompartidasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecetasCompartidasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecetasCompartidasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecetasCompartidasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecetasCompartidasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecetasCompartidasRecordData({
  DateTime? fechaCompartido,
  DocumentReference? usuario,
  DocumentReference? receta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha_compartido': fechaCompartido,
      'usuario': usuario,
      'receta': receta,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecetasCompartidasRecordDocumentEquality
    implements Equality<RecetasCompartidasRecord> {
  const RecetasCompartidasRecordDocumentEquality();

  @override
  bool equals(RecetasCompartidasRecord? e1, RecetasCompartidasRecord? e2) {
    return e1?.fechaCompartido == e2?.fechaCompartido &&
        e1?.usuario == e2?.usuario &&
        e1?.receta == e2?.receta;
  }

  @override
  int hash(RecetasCompartidasRecord? e) =>
      const ListEquality().hash([e?.fechaCompartido, e?.usuario, e?.receta]);

  @override
  bool isValidKey(Object? o) => o is RecetasCompartidasRecord;
}
