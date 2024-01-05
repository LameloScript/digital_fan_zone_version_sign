import '/custom_elements/custom_navbar/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dico_noushi_model.dart';
export 'dico_noushi_model.dart';

class DicoNoushiWidget extends StatefulWidget {
  const DicoNoushiWidget({
    Key? key,
    this.test,
  }) : super(key: key);

  final dynamic test;

  @override
  _DicoNoushiWidgetState createState() => _DicoNoushiWidgetState();
}

class _DicoNoushiWidgetState extends State<DicoNoushiWidget>
    with TickerProviderStateMixin {
  late DicoNoushiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DicoNoushiModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        backgroundColor: Color(0xFFE8E8E8),
        appBar: AppBar(
          backgroundColor: Color(0xFF2256A3),
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
            'Dico Nouchi',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Bebas Neue',
                  color: Colors.white,
                  fontSize: 24.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Group.png',
                  fit: BoxFit.none,
                  alignment: Alignment(1.0, 0.0),
                ),
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.customNavbarModel,
                updateCallback: () => setState(() {}),
                child: CustomNavbarWidget(
                  pageName: 'home',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            labelColor:
                                FlutterFlowTheme.of(context).primaryText,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Bebas Neue',
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                            unselectedLabelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Bebas Neue',
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                            indicatorColor:
                                FlutterFlowTheme.of(context).primary,
                            padding: EdgeInsets.all(6.0),
                            tabs: [
                              Tab(
                                text: 'Glossaire',
                              ),
                              Tab(
                                text: 'JEUX',
                              ),
                            ],
                            controller: _model.tabBarController,
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              Container(
                                width: 500.0,
                                height: double.infinity,
                                child: custom_widgets.SignetCustomiser(
                                  width: 500.0,
                                  height: double.infinity,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlutterFlowWebView(
                                        content:
                                            'https://nonymous01.github.io/NEW_QUIZ/',
                                        bypass: false,
                                        height: 673.0,
                                        verticalScroll: false,
                                        horizontalScroll: false,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
