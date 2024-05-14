import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'pagacartamensal_widget.dart' show PagacartamensalWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PagacartamensalModel extends FlutterFlowModel<PagacartamensalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Criar Token)] action in Column widget.
  ApiCallResponse? criarTokenCartao1;
  // Stores action output result for [Backend Call - API (Pagamento Cartao MP)] action in Column widget.
  ApiCallResponse? pagar1;
  // State field(s) for nomeimpressonocartao widget.
  FocusNode? nomeimpressonocartaoFocusNode;
  TextEditingController? nomeimpressonocartaoTextController;
  String? Function(BuildContext, String?)?
      nomeimpressonocartaoTextControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for numerodocartao widget.
  FocusNode? numerodocartaoFocusNode;
  TextEditingController? numerodocartaoTextController;
  String? Function(BuildContext, String?)?
      numerodocartaoTextControllerValidator;
  // State field(s) for mesdocartao widget.
  FocusNode? mesdocartaoFocusNode;
  TextEditingController? mesdocartaoTextController;
  String? Function(BuildContext, String?)? mesdocartaoTextControllerValidator;
  // State field(s) for anodocartao widget.
  FocusNode? anodocartaoFocusNode;
  TextEditingController? anodocartaoTextController;
  String? Function(BuildContext, String?)? anodocartaoTextControllerValidator;
  // State field(s) for cvv widget.
  FocusNode? cvvFocusNode;
  TextEditingController? cvvTextController;
  String? Function(BuildContext, String?)? cvvTextControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // State field(s) for celularddd widget.
  FocusNode? celulardddFocusNode;
  TextEditingController? celulardddTextController;
  String? Function(BuildContext, String?)? celulardddTextControllerValidator;
  // Stores action output result for [Backend Call - API (Criar Token)] action in efetuarpagamento widget.
  ApiCallResponse? criarTokenCartao3;
  // Stores action output result for [Backend Call - API (Pagamento Cartao MP)] action in efetuarpagamento widget.
  ApiCallResponse? pagar2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeimpressonocartaoFocusNode?.dispose();
    nomeimpressonocartaoTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    numerodocartaoFocusNode?.dispose();
    numerodocartaoTextController?.dispose();

    mesdocartaoFocusNode?.dispose();
    mesdocartaoTextController?.dispose();

    anodocartaoFocusNode?.dispose();
    anodocartaoTextController?.dispose();

    cvvFocusNode?.dispose();
    cvvTextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    celulardddFocusNode?.dispose();
    celulardddTextController?.dispose();
  }
}
