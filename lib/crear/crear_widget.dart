import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'crear_model.dart';
export 'crear_model.dart';

class CrearWidget extends StatefulWidget {
  const CrearWidget({super.key});

  @override
  State<CrearWidget> createState() => _CrearWidgetState();
}

class _CrearWidgetState extends State<CrearWidget> {
  late CrearModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrearModel());

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
            title: Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Food Discover',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Caveat',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 40.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Opacity(
                opacity: 0.9,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeInOut,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: const Color(0x0DFFFFFF),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: const AlignmentDirectional(0.4, 0.0),
                      image: Image.asset(
                        'assets/images/comida_1.jpg',
                      ).image,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.05, -0.18),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'CrearForm',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          text: '',
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: FlutterFlowTheme.of(context)
                                .backgroundComponents,
                            size: 80.0,
                          ),
                          options: FFButtonOptions(
                            height: 139.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0x00105DFB),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.06, -0.84),
                        child: Text(
                          'Crear nueva receta',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 30.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
