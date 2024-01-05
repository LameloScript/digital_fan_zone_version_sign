import '/backend/api_requests/api_calls.dart';
import '/custom_elements/custom_navbar/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'match_test_widget.dart' show MatchTestWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MatchTestModel extends FlutterFlowModel<MatchTestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    customNavbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
