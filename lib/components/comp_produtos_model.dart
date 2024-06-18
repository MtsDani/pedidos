import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'comp_produtos_widget.dart' show CompProdutosWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompProdutosModel extends FlutterFlowModel<CompProdutosWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtProduto widget.
  FocusNode? txtProdutoFocusNode;
  TextEditingController? txtProdutoTextController;
  String? Function(BuildContext, String?)? txtProdutoTextControllerValidator;
  String? _txtProdutoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencha esse campo';
    }

    return null;
  }

  // State field(s) for txtnome widget.
  FocusNode? txtnomeFocusNode;
  TextEditingController? txtnomeTextController;
  String? Function(BuildContext, String?)? txtnomeTextControllerValidator;
  String? _txtnomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencha esse campo';
    }

    return null;
  }

  // State field(s) for txtPreco widget.
  FocusNode? txtPrecoFocusNode;
  TextEditingController? txtPrecoTextController;
  String? Function(BuildContext, String?)? txtPrecoTextControllerValidator;
  String? _txtPrecoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencha esse campo';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtProdutoTextControllerValidator = _txtProdutoTextControllerValidator;
    txtnomeTextControllerValidator = _txtnomeTextControllerValidator;
    txtPrecoTextControllerValidator = _txtPrecoTextControllerValidator;
  }

  @override
  void dispose() {
    txtProdutoFocusNode?.dispose();
    txtProdutoTextController?.dispose();

    txtnomeFocusNode?.dispose();
    txtnomeTextController?.dispose();

    txtPrecoFocusNode?.dispose();
    txtPrecoTextController?.dispose();
  }
}
