import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'listaedfisica_widget.dart' show ListaedfisicaWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListaedfisicaModel extends FlutterFlowModel<ListaedfisicaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for esntradabusca widget.
  final esntradabuscaKey = GlobalKey();
  FocusNode? esntradabuscaFocusNode;
  TextEditingController? esntradabuscaTextController;
  String? esntradabuscaSelectedOption;
  String? Function(BuildContext, String?)? esntradabuscaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    esntradabuscaFocusNode?.dispose();
  }
}
