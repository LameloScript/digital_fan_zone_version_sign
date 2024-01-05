import '/custom_elements/custom_navbar/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'news_details_widget.dart' show NewsDetailsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewsDetailsModel extends FlutterFlowModel<NewsDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customNavbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
