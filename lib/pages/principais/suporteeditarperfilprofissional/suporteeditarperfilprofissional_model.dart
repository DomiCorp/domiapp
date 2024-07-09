import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'suporteeditarperfilprofissional_widget.dart'
    show SuporteeditarperfilprofissionalWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SuporteeditarperfilprofissionalModel
    extends FlutterFlowModel<SuporteeditarperfilprofissionalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ajuda widget.
  FocusNode? ajudaFocusNode;
  TextEditingController? ajudaTextController;
  String? Function(BuildContext, String?)? ajudaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    ajudaFocusNode?.dispose();
    ajudaTextController?.dispose();
  }
}
