import '/flutter_flow/flutter_flow_util.dart';
import 'crear_widget.dart' show CrearWidget;
import 'package:flutter/material.dart';

class CrearModel extends FlutterFlowModel<CrearWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
