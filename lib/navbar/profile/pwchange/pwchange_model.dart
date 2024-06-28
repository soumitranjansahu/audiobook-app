import '/flutter_flow/flutter_flow_util.dart';
import 'pwchange_widget.dart' show PwchangeWidget;
import 'package:flutter/material.dart';

class PwchangeModel extends FlutterFlowModel<PwchangeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
