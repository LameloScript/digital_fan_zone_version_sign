import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'la_routedes_esclaves_model.dart';
export 'la_routedes_esclaves_model.dart';

class LaRoutedesEsclavesWidget extends StatefulWidget {
  const LaRoutedesEsclavesWidget({Key? key}) : super(key: key);

  @override
  _LaRoutedesEsclavesWidgetState createState() =>
      _LaRoutedesEsclavesWidgetState();
}

class _LaRoutedesEsclavesWidgetState extends State<LaRoutedesEsclavesWidget> {
  late LaRoutedesEsclavesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LaRoutedesEsclavesModel());
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
            'La route des esclaves',
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
                          'https://api.s-p5.com/wp-content/uploads/2023/12/Kanga-Nianze-Ivonomad-Ivoirtrips.webp',
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
                      'LA ROUTE DES esclaves',
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
                            '🏢 ABIDJAN',
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
                        'Visite du Musée de Civilisations de la Côte d\'Ivoire et une autre activité culturelle par exemple, la Rotonde des Arts ou le marché de la CAVA.\n',
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
                            '🏢 TIASSALE',
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
                        'Visite du premier pont de Côte d\'Ivoire au dessus de la jonction des fleuves Bandama et Nzi,déjeuner au bord du fleuve-Hippopotames sur le fleuve ou balade à vélo sur les berges.\n\nVisite de la plus grande plantation de bananes de Côte d\'Ivoire,  ainsi que l\'énorme plantation d\'un Suisse avec de l\'hévéa,cacao et banane et surtout une église-mosquée très belle bien que modeste où les deux religions officient-ajouter un musée de la traite négrière (ou à Grand Lahou).\n',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://api.s-p5.com/wp-content/uploads/2023/12/WhatsApp-Image-2023-12-20-at-14.43.32-4.jpg',
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
                            '🏢  AHUA',
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
                        'Visite du lieu-dit du Calvaire et accueil par les villageois avec la danse de N\'Dolo..\n',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://api.s-p5.com/wp-content/uploads/2023/12/WhatsApp-Image-2023-12-20-at-14.43.32-2.jpg',
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
                            '🏢  Kanga Nianzé',
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
                        'Visite de la stèle de Kanga Au bord de la rivière du dernier bain purificatoire.\n',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/WhatsApp_Image_2023-12-20_at_14.43.32_(3).jpg',
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
                            '🏢  Ahouakro',
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
                        'Visite d\'un site de pierres mégalithiques géantes avec une histoire mystique.\n',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://api.s-p5.com/wp-content/uploads/2023/12/WhatsApp-Image-2023-12-20-at-14.43.32-1.jpg',
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
                            '🏢  Grand-Lahou',
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
                        'Séjour à Lahou Panda avec ses belles plages, et surtout l’embouchure du fleuve Bandama, de la lagune et de la mer. A cet endroit, les esclaves arrivées en petites embarcations par le fleuve sont transférés dans les grands bateaux pour le grand voyage vers les Antilles et les Amériques, croisière mémorielle sur le Bandama.\n',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://api.s-p5.com/wp-content/uploads/2023/12/WhatsApp-Image-2023-12-20-at-14.43.32-5.jpg',
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
