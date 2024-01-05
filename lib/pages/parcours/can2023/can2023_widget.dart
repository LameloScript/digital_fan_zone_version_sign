import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'can2023_model.dart';
export 'can2023_model.dart';

class Can2023Widget extends StatefulWidget {
  const Can2023Widget({Key? key}) : super(key: key);

  @override
  _Can2023WidgetState createState() => _Can2023WidgetState();
}

class _Can2023WidgetState extends State<Can2023Widget> {
  late Can2023Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Can2023Model());
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
            'historique',
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
                'assets/images/Vector_(1).png',
                fit: BoxFit.none,
                alignment: Alignment(1.0, 0.0),
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
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
                          image: Image.asset(
                            'assets/images/elephants_(1).jpg',
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
                      EdgeInsetsDirectional.fromSTEB(10.0, 30.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Découvrez le parcous des elephants a  la can 2023',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Bebas Neue',
                                  color: Color(0xFF2256A3),
                                  fontSize: 22.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                '⚽ CAN 1965 : Les premiers pas',
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://api.s-p5.com/wp-content/uploads/2023/12/1965.jpg',
                                      width: 360.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ListView(
                                            padding: EdgeInsets.fromLTRB(
                                              0,
                                              16.0,
                                              0,
                                              16.0,
                                            ),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                constraints: BoxConstraints(
                                                  maxWidth: 570.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: 32.0,
                                                          height: 32.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF2256A3),
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFFF7F7FF),
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  18.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 0.0,
                                                              color: Color(
                                                                  0xFF2256A3),
                                                              offset: Offset(
                                                                  -2.0, 0.0),
                                                            )
                                                          ],
                                                          border: Border.all(
                                                            color: Colors.white,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      26.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                child: RichText(
                                                                  textScaleFactor:
                                                                      MediaQuery.of(
                                                                              context)
                                                                          .textScaleFactor,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            'La Côte d\'Ivoire, fervente équipe de football, fait son entrée sur la scène de la Coupe d\'Afrique des Nations (CAN) en 1965. Un moment clé où elle cherchait à se faire un nom parmi les nations de football émergentes du continent.\n',
                                                                        style:
                                                                            TextStyle(),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFF010101),
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].addToEnd(SizedBox(
                                                                height: 12.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                constraints: BoxConstraints(
                                                  maxWidth: 570.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  18.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 0.0,
                                                              color: Color(
                                                                  0xFF2256A3),
                                                              offset: Offset(
                                                                  -2.0, 0.0),
                                                            )
                                                          ],
                                                          border: Border.all(
                                                            color: Colors.white,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                constraints: BoxConstraints(
                                                  maxWidth: 570.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  18.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 0.0,
                                                              color: Color(
                                                                  0xFF2256A3),
                                                              offset: Offset(
                                                                  -2.0, 0.0),
                                                            )
                                                          ],
                                                          border: Border.all(
                                                            color: Colors.white,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 0.0)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
