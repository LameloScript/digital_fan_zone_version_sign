import '/custom_elements/custom_navbar/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'historique_widget.dart' show HistoriqueWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoriqueModel extends FlutterFlowModel<HistoriqueWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel1;
  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customNavbarModel1 = createModel(context, () => CustomNavbarModel());
    customNavbarModel2 = createModel(context, () => CustomNavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customNavbarModel1.dispose();
    customNavbarModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
