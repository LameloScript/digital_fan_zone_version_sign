import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'popuo_model.dart';
export 'popuo_model.dart';

class PopuoWidget extends StatefulWidget {
  const PopuoWidget({
    Key? key,
    this.storiesJson,
  }) : super(key: key);

  final dynamic storiesJson;

  @override
  _PopuoWidgetState createState() => _PopuoWidgetState();
}

class _PopuoWidgetState extends State<PopuoWidget>
    with TickerProviderStateMixin {
  late PopuoModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 120.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopuoModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 668.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.network(
            'http://ansuthackathonprodweb-01.eastus.cloudapp.azure.com:1337${getJsonField(
              widget.storiesJson,
              r'''$.attributes.imageIllustrative.data.attributes.url''',
            ).toString()}',
          ).image,
        ),
        gradient: LinearGradient(
          colors: [Color(0x00090F13), Color(0x991D2429)],
          stops: [0.0, 0.5],
          begin: AlignmentDirectional(0.0, -1.0),
          end: AlignmentDirectional(0, 1.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getJsonField(
                    widget.storiesJson,
                    r'''$.attributes.titre''',
                  ).toString(),
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).displaySmallFamily,
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).displaySmallFamily),
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                  child: Text(
                    'Description',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodySmallFamily,
                          color: Colors.white,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodySmallFamily),
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation2']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: Text(
                    getJsonField(
                      widget.storiesJson,
                      r'''$.attributes.description''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Color(0x9AFFFFFF),
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation3']!),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
