import '/flutter_flow/flutter_flow_util.dart';
import 'pag_qtde_widget.dart' show PagQtdeWidget;
import 'package:flutter/material.dart';

class PagQtdeModel extends FlutterFlowModel<PagQtdeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
