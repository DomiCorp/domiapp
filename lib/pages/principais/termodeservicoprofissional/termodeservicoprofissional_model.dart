import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/principais/lertermodecondicaousuario/lertermodecondicaousuario_widget.dart';
import '/pages/principais/termodecondicaousuario/termodecondicaousuario_widget.dart';
import 'termodeservicoprofissional_widget.dart'
    show TermodeservicoprofissionalWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TermodeservicoprofissionalModel
    extends FlutterFlowModel<TermodeservicoprofissionalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
