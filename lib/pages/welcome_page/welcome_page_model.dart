import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'welcome_page_widget.dart' show WelcomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class WelcomePageModel extends FlutterFlowModel<WelcomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for UserINSERT widget.
  FocusNode? userINSERTFocusNode;
  TextEditingController? userINSERTTextController;
  String? Function(BuildContext, String?)? userINSERTTextControllerValidator;
  // State field(s) for PassINSERT widget.
  FocusNode? passINSERTFocusNode;
  TextEditingController? passINSERTTextController;
  late bool passINSERTVisibility;
  String? Function(BuildContext, String?)? passINSERTTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passINSERTVisibility = false;
  }

  @override
  void dispose() {
    userINSERTFocusNode?.dispose();
    userINSERTTextController?.dispose();

    passINSERTFocusNode?.dispose();
    passINSERTTextController?.dispose();
  }
}
