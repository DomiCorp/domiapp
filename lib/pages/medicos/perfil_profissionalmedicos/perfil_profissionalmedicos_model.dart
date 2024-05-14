import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'perfil_profissionalmedicos_widget.dart'
    show PerfilProfissionalmedicosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilProfissionalmedicosModel
    extends FlutterFlowModel<PerfilProfissionalmedicosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for mensagemaqui widget.
  FocusNode? mensagemaquiFocusNode;
  TextEditingController? mensagemaquiTextController;
  String? Function(BuildContext, String?)? mensagemaquiTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mensagemaquiFocusNode?.dispose();
    mensagemaquiTextController?.dispose();

    tabBarController?.dispose();
  }
}
