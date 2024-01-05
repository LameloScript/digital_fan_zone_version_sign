import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_header_tourisme_model.dart';
export 'custom_header_tourisme_model.dart';

class CustomHeaderTourismeWidget extends StatefulWidget {
  const CustomHeaderTourismeWidget({Key? key}) : super(key: key);

  @override
  _CustomHeaderTourismeWidgetState createState() =>
      _CustomHeaderTourismeWidgetState();
}

class _CustomHeaderTourismeWidgetState
    extends State<CustomHeaderTourismeWidget> {
  late CustomHeaderTourismeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomHeaderTourismeModel());
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
      height: 219.0,
      decoration: BoxDecoration(
        color: Color(0xFF0A5757),
        image: DecorationImage(
          fit: BoxFit.contain,
          alignment: AlignmentDirectional(1.0, 0.0),
          image: Image.asset(
            'assets/images/tourism.png',
          ).image,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 54.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'matchs',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Bebas Neue',
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    Text(
                      'Recevez les différents résultats\net classement de vos matchs',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 10.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
