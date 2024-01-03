import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeController;
  String? Function(BuildContext, String?)? textFieldNomeControllerValidator;
  // State field(s) for TextFieldDescricao widget.
  FocusNode? textFieldDescricaoFocusNode;
  TextEditingController? textFieldDescricaoController;
  String? Function(BuildContext, String?)?
      textFieldDescricaoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldNomeFocusNode?.dispose();
    textFieldNomeController?.dispose();

    textFieldDescricaoFocusNode?.dispose();
    textFieldDescricaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
