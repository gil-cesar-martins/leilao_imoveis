import '/flutter_flow/flutter_flow_util.dart';
import 'recupera_senha_widget.dart' show RecuperaSenhaWidget;
import 'package:flutter/material.dart';

class RecuperaSenhaModel extends FlutterFlowModel<RecuperaSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddressLogin widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
