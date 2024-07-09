import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'cadastroprofissionalfisioterapia_widget.dart'
    show CadastroprofissionalfisioterapiaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadastroprofissionalfisioterapiaModel
    extends FlutterFlowModel<CadastroprofissionalfisioterapiaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nomecompleto widget.
  FocusNode? nomecompletoFocusNode;
  TextEditingController? nomecompletoTextController;
  String? Function(BuildContext, String?)? nomecompletoTextControllerValidator;
  // State field(s) for dataaniversario widget.
  FocusNode? dataaniversarioFocusNode;
  TextEditingController? dataaniversarioTextController;
  final dataaniversarioMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      dataaniversarioTextControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for rg widget.
  FocusNode? rgFocusNode;
  TextEditingController? rgTextController;
  final rgMask = MaskTextInputFormatter(mask: '#######');
  String? Function(BuildContext, String?)? rgTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // State field(s) for rua widget.
  FocusNode? ruaFocusNode;
  TextEditingController? ruaTextController;
  String? Function(BuildContext, String?)? ruaTextControllerValidator;
  // State field(s) for numerodacasa widget.
  FocusNode? numerodacasaFocusNode;
  TextEditingController? numerodacasaTextController;
  String? Function(BuildContext, String?)? numerodacasaTextControllerValidator;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  // State field(s) for nomeprofissional widget.
  FocusNode? nomeprofissionalFocusNode;
  TextEditingController? nomeprofissionalTextController;
  String? Function(BuildContext, String?)?
      nomeprofissionalTextControllerValidator;
  // State field(s) for numerocelular widget.
  FocusNode? numerocelularFocusNode;
  TextEditingController? numerocelularTextController;
  final numerocelularMask = MaskTextInputFormatter(mask: '###########');
  String? Function(BuildContext, String?)? numerocelularTextControllerValidator;
  // State field(s) for especialidade widget.
  FocusNode? especialidadeFocusNode;
  TextEditingController? especialidadeTextController;
  String? Function(BuildContext, String?)? especialidadeTextControllerValidator;
  // State field(s) for emailprofissional widget.
  FocusNode? emailprofissionalFocusNode;
  TextEditingController? emailprofissionalTextController;
  String? Function(BuildContext, String?)?
      emailprofissionalTextControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for Plano widget.
  FocusNode? planoFocusNode;
  TextEditingController? planoTextController;
  String? Function(BuildContext, String?)? planoTextControllerValidator;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomecompletoFocusNode?.dispose();
    nomecompletoTextController?.dispose();

    dataaniversarioFocusNode?.dispose();
    dataaniversarioTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    rgFocusNode?.dispose();
    rgTextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    ruaFocusNode?.dispose();
    ruaTextController?.dispose();

    numerodacasaFocusNode?.dispose();
    numerodacasaTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    nomeprofissionalFocusNode?.dispose();
    nomeprofissionalTextController?.dispose();

    numerocelularFocusNode?.dispose();
    numerocelularTextController?.dispose();

    especialidadeFocusNode?.dispose();
    especialidadeTextController?.dispose();

    emailprofissionalFocusNode?.dispose();
    emailprofissionalTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    planoFocusNode?.dispose();
    planoTextController?.dispose();
  }
}
