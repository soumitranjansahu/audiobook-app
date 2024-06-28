import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile_create_widget.dart' show ProfileCreateWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ProfileCreateModel extends FlutterFlowModel<ProfileCreateWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Yourname widget.
  FocusNode? yournameFocusNode;
  TextEditingController? yournameTextController;
  String? Function(BuildContext, String?)? yournameTextControllerValidator;
  // State field(s) for phonenumber widget.
  FocusNode? phonenumberFocusNode;
  TextEditingController? phonenumberTextController;
  final phonenumberMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? phonenumberTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for selectgender widget.
  FormFieldController<List<String>>? selectgenderValueController;
  String? get selectgenderValue =>
      selectgenderValueController?.value?.firstOrNull;
  set selectgenderValue(String? val) =>
      selectgenderValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yournameFocusNode?.dispose();
    yournameTextController?.dispose();

    phonenumberFocusNode?.dispose();
    phonenumberTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
