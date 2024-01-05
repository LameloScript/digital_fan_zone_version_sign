import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'la_routedes_rois_model.dart';
export 'la_routedes_rois_model.dart';

class LaRoutedesRoisWidget extends StatefulWidget {
  const LaRoutedesRoisWidget({Key? key}) : super(key: key);

  @override
  _LaRoutedesRoisWidgetState createState() => _LaRoutedesRoisWidgetState();
}

class _LaRoutedesRoisWidgetState extends State<LaRoutedesRoisWidget> {
  late LaRoutedesRoisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LaRoutedesRoisModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'La route des rois',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 22.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/tourism.png',
                fit: BoxFit.none,
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 216.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://s-p5.com/medi/ansut/country/chaise%20royale.jpg',
                          ).image,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 30.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'LA ROUTE DES ROIS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Bebas Neue',
                              color: Color(0xFF2256A3),
                              fontSize: 25.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '🏢 ABENGOUROU',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Bebas Neue',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Rencontre avec le roi, visite du palais royal et du musée des ornements royaux\n\nDécouverte du marché traditionnel et danse traditionnelle des féticheuses\n\nSafari dans la forêt classée de Bosemienté (incl. points d’observations pour observer des animaux (dont éléphants)',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '🏢 ABOISSO',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Bebas Neue',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Rencontre avec le roi, visite du palais royal.\nDécouverte du marché traditionnel et danse traditionnelle des féticheuses.',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://api.s-p5.com/wp-content/uploads/2023/12/komian_2-1.jpg',
                            width: 360.0,
                            height: 153.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '🏢  ASSINIE/GRAND BASSAM',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Bebas Neue',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Repos dans un hôtel haut de gamme sur la plage d’Assinie.\nDécouverte du quartier France de Grand-Bassam.',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://api.s-p5.com/wp-content/uploads/2023/12/QUARTIER_AIR_FRANCE-1.jpg',
                            width: 360.0,
                            height: 153.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '🏢  BONDOUKOU',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Bebas Neue',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Rencontre avec le roi des Brons et découverte de son palais royal.\n\nDécouverte des potières de Motiamo, mosquée de Sorobango, singes de Soko et poissons sacrés de Gbokoré.',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://api.s-p5.com/wp-content/uploads/2023/12/poissons_sacre_-_Copie-1.jpg',
                            width: 360.0,
                            height: 153.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '🏢  BOUNA',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Bebas Neue',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Safari en voiture et à pied dans les savanes protégées du parc national de la Comoé. Observation d’éléphants, buffles, crocodiles, bonobos, antilopes, etc.\n',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://api.s-p5.com/wp-content/uploads/2023/12/parc_nation_de_la_comoe-1.jpg',
                            width: 360.0,
                            height: 153.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '🏢  KONG',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Bebas Neue',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Découverte des richesses culturelles de la ville et des environs de Kong: Mosquées, artisanat traditionnel, etc.',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 30.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://api.s-p5.com/wp-content/uploads/2023/12/mosquee-de-kong_-_Copie-1.jpg',
                            width: 360.0,
                            height: 153.0,
                            fit: BoxFit.cover,
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
    );
  }
}
