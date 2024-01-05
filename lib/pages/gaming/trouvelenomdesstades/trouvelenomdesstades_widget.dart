import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trouvelenomdesstades_model.dart';
export 'trouvelenomdesstades_model.dart';

class TrouvelenomdesstadesWidget extends StatefulWidget {
  const TrouvelenomdesstadesWidget({Key? key}) : super(key: key);

  @override
  _TrouvelenomdesstadesWidgetState createState() =>
      _TrouvelenomdesstadesWidgetState();
}

class _TrouvelenomdesstadesWidgetState
    extends State<TrouvelenomdesstadesWidget> {
  late TrouvelenomdesstadesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrouvelenomdesstadesModel());
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
        backgroundColor: Colors.white,
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
              context.pushNamed('QuizzStadium');
            },
          ),
          title: Text(
            'Trouve le nom des stades',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Bebas Neue',
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
        body: FlutterFlowWebView(
          content:
              'https://data.gouv.ci/data-fair/app/photos-des-stades-can-2023-jeu-quiz?embed=true',
          bypass: false,
          height: MediaQuery.sizeOf(context).height * 1.0,
          verticalScroll: true,
          horizontalScroll: true,
        ),
      ),
    );
  }
}
