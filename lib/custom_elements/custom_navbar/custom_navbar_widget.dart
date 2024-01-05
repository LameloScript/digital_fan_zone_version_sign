import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_navbar_model.dart';
export 'custom_navbar_model.dart';

class CustomNavbarWidget extends StatefulWidget {
  const CustomNavbarWidget({
    Key? key,
    required this.pageName,
  }) : super(key: key);

  final String? pageName;

  @override
  _CustomNavbarWidgetState createState() => _CustomNavbarWidgetState();
}

class _CustomNavbarWidgetState extends State<CustomNavbarWidget> {
  late CustomNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavbarModel());
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
      height: 80.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlutterFlowIconButton(
                    buttonSize: 40.0,
                    fillColor: Colors.white,
                    icon: Icon(
                      FFIcons.kgroup12,
                      color: widget.pageName == 'home'
                          ? Color(0xFF2256A3)
                          : Color(0xFF010101),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed(
                        'HomePage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      FFIcons.kvector3,
                      color: widget.pageName == 'matchss'
                          ? Color(0xFF2256A3)
                          : Color(0xFF010101),
                      size: 22.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'matchTest',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      FFIcons.kgroup2,
                      color: widget.pageName == 'Can2023'
                          ? Color(0xFF2256A3)
                          : Color(0xFF010101),
                      size: 28.0,
                    ),
                    onPressed: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed(
                        'Historique',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      FFIcons.kvector2,
                      color: widget.pageName == 'guides'
                          ? Color(0xFF2256A3)
                          : Color(0xFF010101),
                      size: 28.0,
                    ),
                    onPressed: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed(
                        'guides',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.library_books_sharp,
                      color: widget.pageName == 'News'
                          ? Color(0xFF2256A3)
                          : Color(0xFF010101),
                      size: 28.0,
                    ),
                    onPressed: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed(
                        'News',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
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
