import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'customfirst_header_model.dart';
export 'customfirst_header_model.dart';

class CustomfirstHeaderWidget extends StatefulWidget {
  const CustomfirstHeaderWidget({Key? key}) : super(key: key);

  @override
  _CustomfirstHeaderWidgetState createState() =>
      _CustomfirstHeaderWidgetState();
}

class _CustomfirstHeaderWidgetState extends State<CustomfirstHeaderWidget> {
  late CustomfirstHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomfirstHeaderModel());
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
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Color(0xFF0A5757),
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: AlignmentDirectional(-1.0, 0.0),
          image: Image.asset(
            'assets/images/Group_16_(1).png',
          ).image,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'ANSUT',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Bebas Neue',
                        color: Colors.white,
                        fontSize: 34.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
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
