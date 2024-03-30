import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'compartidas_model.dart';
export 'compartidas_model.dart';

class CompartidasWidget extends StatefulWidget {
  const CompartidasWidget({super.key});

  @override
  State<CompartidasWidget> createState() => _CompartidasWidgetState();
}

class _CompartidasWidgetState extends State<CompartidasWidget> {
  late CompartidasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompartidasModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFFFDB899),
          automaticallyImplyLeading: false,
          actions: const [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Save Recipies...',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondary,
                      fontSize: 40.0,
                      letterSpacing: 0.0,
                    ),
                textAlign: TextAlign.center,
                minLines: null,
                validator: _model.textControllerValidator.asValidator(context),
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
            titlePadding: const EdgeInsets.all(12.0),
          ),
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-0.92, -0.94),
                    child: Container(
                      width: 138.0,
                      height: 133.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1525518392674-39ba1fca2ec2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxmYXN0Zm9vZHxlbnwwfHx8fDE3MTA1NjIwNzF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                          width: 350.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.91, -0.48),
                    child: Text(
                      'Artisanal Pizza',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.82, -0.5),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: 20.0,
                      borderWidth: 0.0,
                      buttonSize: 35.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: const Icon(
                        Icons.favorite,
                        color: Color(0xFFF40101),
                        size: 18.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.71, -0.93),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1623428187969-5da2dcea5ebf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMXx8c2FsYWR8ZW58MHx8fHwxNzEwNDk5MTE4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 146.0,
                        height: 133.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.5, -0.48),
                    child: Text(
                      'Avocado Salad ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.35, -0.49),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: 20.0,
                      borderWidth: 0.0,
                      buttonSize: 35.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: const Icon(
                        Icons.favorite,
                        color: Color(0xFFF40101),
                        size: 18.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.92, -0.1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1634870487473-15874d3a0f35?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxsYXNhZ25hfGVufDB8fHx8MTcxMDU3MTYzOHww&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 140.0,
                        height: 135.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.78, 0.2),
                    child: Text(
                      'Lasagna',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.39, 0.22),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 35.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: const Icon(
                        Icons.favorite,
                        color: Color(0xFFF40101),
                        size: 20.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.69, -0.1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1624300629298-e9de39c13be5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx0YWNvc3xlbnwwfHx8fDE3MTA1MTk3MDV8MA&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 151.0,
                        height: 132.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.44, 0.2),
                    child: Text(
                      'Tacos al Pastor',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.79, 0.21),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 35.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: const Icon(
                        Icons.favorite,
                        color: Color(0xFFF40101),
                        size: 20.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.91, 0.68),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1594309205061-285bb52bf727?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMHx8JTIwY2FtYXJvbmVzfGVufDB8fHx8MTcxMDU3NDc0OXww&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 145.0,
                        height: 131.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.05, 0.86),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(45.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Shrimp',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: Colors.black,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.42, 0.88),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 35.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: const Icon(
                        Icons.favorite,
                        color: Color(0xFFF40101),
                        size: 20.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.28, 1.01),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://picsum.photos/seed/309/600',
                        width: 300.0,
                        height: 0.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.7, 0.69),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1578020190125-f4f7c18bc9cb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxzb3BhJTIwfGVufDB8fHx8MTcxMDU3NTc1MXww&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 148.0,
                        height: 130.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.38, 0.85),
                    child: Text(
                      'Azteca Soap',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.76, 0.87),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 35.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: const Icon(
                        Icons.favorite,
                        color: Color(0xFFF40101),
                        size: 20.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.05, 1.04),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'next',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
