import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'pixrenovarpagamento_widget.dart' show PixrenovarpagamentoWidget;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PixrenovarpagamentoModel
    extends FlutterFlowModel<PixrenovarpagamentoWidget> {
  ///  Local state fields for this page.

  String? imagemcard;

  int? mescartao;

  int? anocartao;

  String? pedido;

  bool pago = false;

  String? qrcodepix;

  String? metodo;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomecompletoususario widget.
  FocusNode? nomecompletoususarioFocusNode;
  TextEditingController? nomecompletoususarioTextController;
  String? Function(BuildContext, String?)?
      nomecompletoususarioTextControllerValidator;
  // State field(s) for emaildousuario widget.
  FocusNode? emaildousuarioFocusNode;
  TextEditingController? emaildousuarioTextController;
  String? Function(BuildContext, String?)?
      emaildousuarioTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - API (Criar pagamento pix)] action in pagar widget.
  ApiCallResponse? criarpix;
  // Stores action output result for [Backend Call - API (Buscar pagamento)] action in pagar widget.
  ApiCallResponse? buscarpagamento;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomecompletoususarioFocusNode?.dispose();
    nomecompletoususarioTextController?.dispose();

    emaildousuarioFocusNode?.dispose();
    emaildousuarioTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
