import '/flutter_flow/flutter_flow_util.dart';
import 'pag_vendas_widget.dart' show PagVendasWidget;
import 'package:flutter/material.dart';

class PagVendasModel extends FlutterFlowModel<PagVendasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
