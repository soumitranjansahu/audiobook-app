import '/flutter_flow/flutter_flow_util.dart';
import 'booksearchpage_widget.dart' show BooksearchpageWidget;
import 'package:flutter/material.dart';

class BooksearchpageModel extends FlutterFlowModel<BooksearchpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
