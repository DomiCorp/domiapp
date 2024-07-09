import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/novodomi/termodecondicaousuario/termodecondicaousuario_widget.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for criaremail widget.
  FocusNode? criaremailFocusNode;
  TextEditingController? criaremailTextController;
  String? Function(BuildContext, String?)? criaremailTextControllerValidator;
  String? _criaremailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'E-mail inválido';
    }
    return null;
  }

  // State field(s) for criarsenha widget.
  FocusNode? criarsenhaFocusNode;
  TextEditingController? criarsenhaTextController;
  late bool criarsenhaVisibility;
  String? Function(BuildContext, String?)? criarsenhaTextControllerValidator;
  String? _criarsenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    if (val.length < 6) {
      return 'Mínimo  de 6 caracaracteres ';
    }

    return null;
  }

  // State field(s) for confcriarsenha widget.
  FocusNode? confcriarsenhaFocusNode;
  TextEditingController? confcriarsenhaTextController;
  late bool confcriarsenhaVisibility;
  String? Function(BuildContext, String?)?
      confcriarsenhaTextControllerValidator;
  String? _confcriarsenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    if (val.length < 6) {
      return 'Mínimo  de 6 caracaracteres ';
    }

    return null;
  }

  // State field(s) for tiposwict widget.
  bool? tiposwictValue;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    criaremailTextControllerValidator = _criaremailTextControllerValidator;
    criarsenhaVisibility = false;
    criarsenhaTextControllerValidator = _criarsenhaTextControllerValidator;
    confcriarsenhaVisibility = false;
    confcriarsenhaTextControllerValidator =
        _confcriarsenhaTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    criaremailFocusNode?.dispose();
    criaremailTextController?.dispose();

    criarsenhaFocusNode?.dispose();
    criarsenhaTextController?.dispose();

    confcriarsenhaFocusNode?.dispose();
    confcriarsenhaTextController?.dispose();
  }
}
