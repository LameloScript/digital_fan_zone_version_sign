import '/backend/api_requests/api_calls.dart';
import '/components/popuo_widget.dart';
import '/custom_elements/custom_navbar/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/request_manager.dart';

import 'home_page_copy_widget.dart' show HomePageCopyWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HomePageCopyModel extends FlutterFlowModel<HomePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Query cache managers for this widget.

  final _bvManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> bv({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _bvManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBvCache() => _bvManager.clear();
  void clearBvCacheKey(String? uniqueKey) => _bvManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customNavbarModel.dispose();
    tabBarController?.dispose();

    /// Dispose query cache managers for this widget.

    clearBvCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
