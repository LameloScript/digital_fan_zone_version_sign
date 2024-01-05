import '/custom_elements/custom_navbar/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'tourisme_widget.dart' show TourismeWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TourismeModel extends FlutterFlowModel<TourismeWidget> {
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
