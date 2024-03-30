import '/flutter_flow/flutter_flow_util.dart';
import 'crear_form_widget.dart' show CrearFormWidget;
import 'package:flutter/material.dart';

class CrearFormModel extends FlutterFlowModel<CrearFormWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtIngredientes widget.
  FocusNode? txtIngredientesFocusNode;
  TextEditingController? txtIngredientesController;
  String? Function(BuildContext, String?)? txtIngredientesControllerValidator;
  // State field(s) for txtPreparacion widget.
  FocusNode? txtPreparacionFocusNode;
  TextEditingController? txtPreparacionController;
  String? Function(BuildContext, String?)? txtPreparacionControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreController?.dispose();

    txtIngredientesFocusNode?.dispose();
    txtIngredientesController?.dispose();

    txtPreparacionFocusNode?.dispose();
    txtPreparacionController?.dispose();
  }
}
