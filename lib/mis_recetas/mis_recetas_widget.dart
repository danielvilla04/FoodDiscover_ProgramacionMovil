import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'mis_recetas_model.dart';
export 'mis_recetas_model.dart';

class MisRecetasWidget extends StatefulWidget {
  const MisRecetasWidget({super.key});

  @override
  State<MisRecetasWidget> createState() => _MisRecetasWidgetState();
}

class _MisRecetasWidgetState extends State<MisRecetasWidget> {
  late MisRecetasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MisRecetasModel());

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
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Page Title',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Readex Pro',
                    color: Colors.white,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child:
              // En esta seccion se muestra las fotos y videos que estén almecenados en el docuemento de la base de datos de la respectiva receta.
              Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 268.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 180.0,
                    child: CarouselSlider(
                      items: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/950/600',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.contain,
                            alignment: const Alignment(0.0, 0.0),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/728/600',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/165/600',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/380/600',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                      carouselController: _model.carouselController ??=
                          CarouselController(),
                      options: CarouselOptions(
                        initialPage: 1,
                        viewportFraction: 0.5,
                        disableCenter: false,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.25,
                        enableInfiniteScroll: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: false,
                        onPageChanged: (index, _) =>
                            _model.carouselCurrentIndex = index,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 193.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Ingredientes',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
