import '/flutter_flow/flutter_flow_util.dart';
import 'editar_widget.dart' show EditarWidget;
import 'package:flutter/material.dart';

class EditarModel extends FlutterFlowModel<EditarWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextFieldEditarNome widget.
  FocusNode? textFieldEditarNomeFocusNode;
  TextEditingController? textFieldEditarNomeController;
  String? Function(BuildContext, String?)?
      textFieldEditarNomeControllerValidator;
  // State field(s) for TextFieldEditarStatus widget.
  FocusNode? textFieldEditarStatusFocusNode;
  TextEditingController? textFieldEditarStatusController;
  String? Function(BuildContext, String?)?
      textFieldEditarStatusControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldEditarNomeFocusNode?.dispose();
    textFieldEditarNomeController?.dispose();

    textFieldEditarStatusFocusNode?.dispose();
    textFieldEditarStatusController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
