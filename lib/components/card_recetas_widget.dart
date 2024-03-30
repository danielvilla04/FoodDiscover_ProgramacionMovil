import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_recetas_model.dart';
export 'card_recetas_model.dart';

class CardRecetasWidget extends StatefulWidget {
  const CardRecetasWidget({super.key});

  @override
  State<CardRecetasWidget> createState() => _CardRecetasWidgetState();
}

class _CardRecetasWidgetState extends State<CardRecetasWidget> {
  late CardRecetasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardRecetasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 0.0, 8.0),
      child: Container(
        width: 220.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1558024920-b41e1887dc32?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxtYWNhcm9ufGVufDB8fHx8MTcxMDYxNjExOHww&ixlib=rb-4.0.3&q=80&w=1080',
                        width: double.infinity,
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Nombre Receta',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'By: ',
                            style: GoogleFonts.getFont(
                              'Open Sans',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Nombre Creador',
                            style: GoogleFonts.getFont(
                              'Open Sans',
                              color: FlutterFlowTheme.of(context).tertiary,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Inter',
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
