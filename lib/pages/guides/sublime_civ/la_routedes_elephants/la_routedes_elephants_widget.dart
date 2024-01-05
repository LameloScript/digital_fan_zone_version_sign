import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'la_routedes_elephants_model.dart';
export 'la_routedes_elephants_model.dart';

class LaRoutedesElephantsWidget extends StatefulWidget {
  const LaRoutedesElephantsWidget({Key? key}) : super(key: key);

  @override
  _LaRoutedesElephantsWidgetState createState() =>
      _LaRoutedesElephantsWidgetState();
}

class _LaRoutedesElephantsWidgetState extends State<LaRoutedesElephantsWidget> {
  late LaRoutedesElephantsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LaRoutedesElephantsModel());
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
            'La route des Elephants',
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
                'assets/images/tourisme.png',
                fit: BoxFit.none,
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
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
                          'https://api.s-p5.com/wp-content/uploads/2023/12/pexels-magda-ehlers-3853162-scaled.jpg',
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 30.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LA ROUTE DES ELEPHANTS',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Bebas Neue',
                            color: Color(0xFF2256A3),
                            fontSize: 25.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
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
                            '🏢 man',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Bebas Neue',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
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
                        'Découverte des tisserands traditionnels, atelier traditionnel du travail du bois de cola (bois rouge), des singes de Songéke et de la grande cascade de Man.\n\nVisite sportive : Randonnée sur  la dent de Man; Visite Culturelle : pont de liane et champs de cacao et café;  Spectacle des masques dans un petit village.\n\nImmersion dans un village traditionnel: rencontre avec les villageois, dîner d’accueil et danses traditionnelles.',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
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
                            '🏢 Korhogo',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Bebas Neue',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
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
                        'Découverte des forgerons traditionnels de Cogny(«transformer la terre en une hache»), des peintres sur toile de Dakar inspirés de Pablo Picasso.\n\nPartage du processus de création artisanal du beurre de karité, du sculpteur dubois et des tisserands.\nRandonnées à proximité des Rochers Sacrés.',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://api.s-p5.com/wp-content/uploads/2023/12/rocher_sacres-1.jpg',
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
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
                            '🏢 taÏ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Bebas Neue',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
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
                        'Randonnée pédestres dans la forêt tropicale primaire Parc National de Taï: «Rencontre avec les chimpanzés sauvages» et «Sur la trace des éléphants» Grand-Béréby.',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://api.s-p5.com/wp-content/uploads/2023/12/parc_NC_-_Copie-1-1.jpg',
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
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
                            '🏢  sangbé',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Bebas Neue',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
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
                        'Safari en voiture dans les savanes protégées du Mont Sangbé,avec points d’observation de buffles, antilopes, chimpanzés, etc.\n',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://api.s-p5.com/wp-content/uploads/2023/12/mont_sangbe-1.jpg',
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
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
                            '🏢  grand bereby',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Bebas Neue',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
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
                        'Repos sur une plage naturelle, snorkeling et tortues de mer sauvages..',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://api.s-p5.com/wp-content/uploads/2023/12/grand_bereby-1.jpg',
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
    );
  }
}
