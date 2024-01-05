import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choice_copy_model.dart';
export 'choice_copy_model.dart';

class ChoiceCopyWidget extends StatefulWidget {
  const ChoiceCopyWidget({Key? key}) : super(key: key);

  @override
  _ChoiceCopyWidgetState createState() => _ChoiceCopyWidgetState();
}

class _ChoiceCopyWidgetState extends State<ChoiceCopyWidget>
    with TickerProviderStateMixin {
  late ChoiceCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 140.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(-0.349, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChoiceCopyModel());
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
            'choix du pays',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 22.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/Suppoter-Maso.jpg',
                ).image,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 100.0, 16.0, 16.0),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 570.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 20.0, 16.0, 24.0),
                              child: Text(
                                'Choisissez votre équipe ',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-1.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/Flag_of_C+te_dIvoire.svg.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('carte');

                                      setState(() {
                                        FFAppState().url =
                                            'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-4.svg';
                                      });
                                    },
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(200.0),
                                      child: Image.asset(
                                        'assets/images/algerie.png',
                                        width: 60.0,
                                        height: 60.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('carte');

                                      setState(() {
                                        FFAppState().url =
                                            'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-5.svg';
                                      });
                                    },
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(200.0),
                                      child: Image.asset(
                                        'assets/images/ao.webp',
                                        width: 60.0,
                                        height: 60.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('carte');

                                      setState(() {
                                        FFAppState().url =
                                            'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-6.svg';
                                      });
                                    },
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(200.0),
                                      child: Image.asset(
                                        'assets/images/bf.webp',
                                        width: 60.0,
                                        height: 60.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('carte');

                                          setState(() {
                                            FFAppState().url =
                                                'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-8.svg';
                                          });
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(200.0),
                                          child: Image.asset(
                                            'assets/images/cm.webp',
                                            width: 60.0,
                                            height: 60.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-9.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/cv.webp',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-7.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/cd.webp',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-10.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/eg.webp',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('carte');

                                          setState(() {
                                            FFAppState().url =
                                                'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-15.png';
                                          });
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(200.0),
                                          child: Image.asset(
                                            'assets/images/Guin+e_+quatoriale.jpeg',
                                            width: 60.0,
                                            height: 60.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-14.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/gh.webp',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-16.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/guine.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-11.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/Flag_of_Guinea-Bissau.svg.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('carte');

                                          setState(() {
                                            FFAppState().url =
                                                'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-17.png';
                                          });
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(200.0),
                                          child: Image.asset(
                                            'assets/images/Mali.png',
                                            width: 60.0,
                                            height: 60.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-19.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/Mauritanie.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-18.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/maroc.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-12.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/Flag_of_Mozambique.svg.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('carte');

                                          setState(() {
                                            FFAppState().url =
                                                'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-20.png';
                                          });
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(200.0),
                                          child: Image.asset(
                                            'assets/images/Namibie.png',
                                            width: 60.0,
                                            height: 60.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-2.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/1200px-Flag_of_Nigeria.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-21.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/Senegal.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-3.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/Afrique_du_Sud.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('carte');

                                          setState(() {
                                            FFAppState().url =
                                                'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-23.png';
                                          });
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(200.0),
                                          child: Image.asset(
                                            'assets/images/tz.webp',
                                            width: 60.0,
                                            height: 60.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-13.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/GAMBIE.jpg',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-22.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/Tunisie.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('carte');

                                        setState(() {
                                          FFAppState().url =
                                              'https://s-p5.com/medi/ansut/pictures/SVG/CAN_PASSPORT-24.png';
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200.0),
                                        child: Image.asset(
                                          'assets/images/Zambie.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 40.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Continuer',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 44.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
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
