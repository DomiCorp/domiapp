import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'mensagemparaempresa_widget.dart' show MensagemparaempresaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MensagemparaempresaModel
    extends FlutterFlowModel<MensagemparaempresaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for textomensagem widget.
  FocusNode? textomensagemFocusNode;
  TextEditingController? textomensagemTextController;
  String? Function(BuildContext, String?)? textomensagemTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textomensagemFocusNode?.dispose();
    textomensagemTextController?.dispose();
  }
}