import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RecetasUsuarioRecord extends FirestoreRecord {
  RecetasUsuarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreReceta" field.
  String? _nombreReceta;
  String get nombreReceta => _nombreReceta ?? '';
  bool hasNombreReceta() => _nombreReceta != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "usuarioCreador" field.
  DocumentReference? _usuarioCreador;
  DocumentReference? get usuarioCreador => _usuarioCreador;
  bool hasUsuarioCreador() => _usuarioCreador != null;

  // "tipoReceta" field.
  String? _tipoReceta;
  String get tipoReceta => _tipoReceta ?? '';
  bool hasTipoReceta() => _tipoReceta != null;

  // "tiempoDuracion" field.
  DateTime? _tiempoDuracion;
  DateTime? get tiempoDuracion => _tiempoDuracion;
  bool hasTiempoDuracion() => _tiempoDuracion != null;

  // "ingredientes" field.
  List<String>? _ingredientes;
  List<String> get ingredientes => _ingredientes ?? const [];
  bool hasIngredientes() => _ingredientes != null;

  // "preparacion" field.
  String? _preparacion;
  String get preparacion => _preparacion ?? '';
  bool hasPreparacion() => _preparacion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _nombreReceta = snapshotData['nombreReceta'] as String?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _usuarioCreador = snapshotData['usuarioCreador'] as DocumentReference?;
    _tipoReceta = snapshotData['tipoReceta'] as String?;
    _tiempoDuracion = snapshotData['tiempoDuracion'] as DateTime?;
    _ingredientes = getDataList(snapshotData['ingredientes']);
    _preparacion = snapshotData['preparacion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recetas_usuario');

  static Stream<RecetasUsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecetasUsuarioRecord.fromSnapshot(s));

  static Future<RecetasUsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecetasUsuarioRecord.fromSnapshot(s));

  static RecetasUsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecetasUsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecetasUsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecetasUsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecetasUsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecetasUsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecetasUsuarioRecordData({
  String? nombreReceta,
  DateTime? fechaCreacion,
  DocumentReference? usuarioCreador,
  String? tipoReceta,
  DateTime? tiempoDuracion,
  String? preparacion,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreReceta': nombreReceta,
      'fechaCreacion': fechaCreacion,
      'usuarioCreador': usuarioCreador,
      'tipoReceta': tipoReceta,
      'tiempoDuracion': tiempoDuracion,
      'preparacion': preparacion,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecetasUsuarioRecordDocumentEquality
    implements Equality<RecetasUsuarioRecord> {
  const RecetasUsuarioRecordDocumentEquality();

  @override
  bool equals(RecetasUsuarioRecord? e1, RecetasUsuarioRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombreReceta == e2?.nombreReceta &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.usuarioCreador == e2?.usuarioCreador &&
        e1?.tipoReceta == e2?.tipoReceta &&
        e1?.tiempoDuracion == e2?.tiempoDuracion &&
        listEquality.equals(e1?.ingredientes, e2?.ingredientes) &&
        e1?.preparacion == e2?.preparacion &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(RecetasUsuarioRecord? e) => const ListEquality().hash([
        e?.nombreReceta,
        e?.fechaCreacion,
        e?.usuarioCreador,
        e?.tipoReceta,
        e?.tiempoDuracion,
        e?.ingredientes,
        e?.preparacion,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is RecetasUsuarioRecord;
}
