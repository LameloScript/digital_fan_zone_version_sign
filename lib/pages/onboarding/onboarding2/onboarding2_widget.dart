import 'package:hive_flutter/hive_flutter.dart';
import '../../home_page/home_page_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'onboarding2_model.dart';
export 'onboarding2_model.dart';

class Onboarding2Widget extends StatefulWidget {
  const Onboarding2Widget({Key? key}) : super(key: key);

  @override
  _Onboarding2WidgetState createState() => _Onboarding2WidgetState();
}

class _Onboarding2WidgetState extends State<Onboarding2Widget> {
  late Onboarding2Model _model;
  final Box _boxLogin = Hive.box("check");

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding2Model());
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
    if (_boxLogin.get("status") ?? false) {
      return HomePageWidget();
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/OnBoarding2_(1).png',
                  ).image,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).height ==
                                  valueOrDefault<double>(
                                    kBreakpointSmall,
                                    667.0,
                                  )) {
                                return 0.0;
                              } else if (MediaQuery.sizeOf(context).height >=
                                  valueOrDefault<double>(
                                    kBreakpointMedium,
                                    800.0,
                                  )) {
                                return 150.0;
                              } else {
                                return 0.0;
                              }
                            }(),
                            0.0,
                          ),
                          0.0,
                          0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'VIBREZ AU RYTHME \nDE LA CAN 2023',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Bebas Neue',
                                        color: Colors.white,
                                        fontSize: 40.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                        lineHeight: 1.0,
                                      ),
                                ),
                                Text(
                                  'Découvrez en temps réel les  informations sur toutes les rencontres.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/Group_7_(1).png',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.95,
                                          height: 380.0,
                                          fit: BoxFit.none,
                                          alignment: Alignment(0.0, 0.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed(
                                              'Onboarding3',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                ),
                                              },
                                            );
                                          },
                                          text: 'SUIVANT',
                                          options: FFButtonOptions(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .override(
                                                      fontFamily: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMediumFamily),
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
