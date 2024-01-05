import '/custom_elements/custom_navbar/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'dico_noushi_widget.dart' show DicoNoushiWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DicoNoushiModel extends FlutterFlowModel<DicoNoushiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customNavbarModel.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
