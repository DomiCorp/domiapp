import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termodecondicaousuario_model.dart';
export 'termodecondicaousuario_model.dart';

class TermodecondicaousuarioWidget extends StatefulWidget {
  const TermodecondicaousuarioWidget({super.key});

  @override
  State<TermodecondicaousuarioWidget> createState() =>
      _TermodecondicaousuarioWidgetState();
}

class _TermodecondicaousuarioWidgetState
    extends State<TermodecondicaousuarioWidget> {
  late TermodecondicaousuarioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermodecondicaousuarioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 8.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 500.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            5.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'TERMOS E CONDIÇÕES GERAIS DE USO DO APP – CONTRATANTES',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 21.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          'Verifique aqui os termos e condições gerais de uso.',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 44.0,
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              'ALEX RIPARDO DA SILVA, pessoa jurídica de direito privado, inscrita no CNPJ sob o nº. 52.877.113/0001-73, nome fantasia: DOMI, sito na Rua Padre Felipe Betendorf, 1710, entre alvorada e palhão, CEP: 68020580, nesta Cidade de Santarém-Pará, prestadora de serviços de anúncios online realizados entre os contratantes e promitentes Prestadores de serviço, por meio do aplicativo DOMI (“Plataforma”).\nPor intermédio destes Termos e Condições Gerais de Uso, a DOMI apresenta aos usuários Contratantes, as condições essenciais para o uso dos serviços oferecidos na Plataforma.\nAo utilizar a Plataforma ou utilizar os serviços ofertados pela DOMI, os usuários aceitam e se submetem às condições destes Termos e às Políticas de Privacidade, bem como a todos os documentos anexos a estes.\n\n1. DO OBJETO\na. Os serviços objeto do presente Termo consistem em:\nI.Permitir aos Contratantes que utilizem a Plataforma para livremente e sem direcionamento ou interferência da DOMI, busquem orçamentos de Prestadores de serviços com ATUAÇÃO EXCLUSIVA NA CIDADE DE SANTARÉM/PA;\nII.O Modelo de acesso ao link do telefone pessoal, apresenta os orçamentos requeridos pelos Contratantes aos Prestadores, que poderão oferecer ou não os seus Serviços, ao seu critério. \nIII.Viabilizar o contato direto entre Prestadores e Contratantes interessados em adquirir os Serviços, por meio da divulgação das informações de contato de uma parte à outra.\nIV.A DOMI, portanto, possibilita que os Usuários contatem-se e negociem entre si DIRETAMENTE, sem intervir no contato, na negociação ou na efetivação dos negócios, não sendo, nesta qualidade, fornecedor de quaisquer Serviços anunciados por seus Usuários na Plataforma.\nb. Na qualidade de classificado de Serviços, a DOMI não impõe ou interfere em qualquer negociação sobre condição, valor, qualidade, forma ou prazo da contratação entre os Contratantes e Prestadores, tampouco garante a qualidade ou entrega dos Serviços contratados entre os Usuários.\nc. Ao se cadastrar, o Usuário poderá utilizar todos os serviços disponibilizados na Plataforma disponíveis para sua região, declarando, para tanto, ter lido, compreendido e aceitado estes Termos.\n\n2. DA CAPACIDADE PARA CADASTRAR-SE:\na. Os serviços da DOMI estão disponíveis para pessoas físicas e pessoas jurídicas que tenham capacidade legal para contratá-los. Não podem utilizá-los, assim, pessoas que não gozem dessa capacidade, inclusive menores de idade ou pessoas que tenham sido inabilitadas na DOMI, temporária ou definitivamente. Ficam, desde já, os Usuários advertidos das sanções legais cominadas pelo Código Civil.\nb. É vedada a criação de mais de um cadastro por Usuário. Em caso de multiplicidade de cadastros elaborados por um só Usuário, a DOMI reserva-se o direito de a seu exclusivo critério e sem necessidade de prévia anuência ou comunicação aos Usuários, inabilitar todos os cadastros existentes e impedir eventuais cadastros futuros vinculados a estes.\nc. Somente será permitida a vinculação de um cadastro por CPF, telefone ou e-mail, não podendo haver duplicidade de dados em nenhum caso.\nd. A DOMI pode unilateralmente excluir o cadastro dos Usuários quando verificado que a conduta do Usuário é ou será prejudicial ou ofensiva a outros Usuários, a DOMI ou a terceiros.\n\n3. DO CADASTRO\na. É necessário o preenchimento completo de todos os dados pessoais exigidos pelo DOMI no momento do cadastramento, para que o Usuário esteja habilitado a utilizar a Plataforma.\nb. É de exclusiva responsabilidade dos Usuários fornecer, atualizar e garantir a veracidade dos dados cadastrais, não cabendo a DOMI qualquer tipo de responsabilidade civil e/ou criminal resultante de dados inverídicos, incorretos ou incompletos fornecidos pelos Usuários.\nc. A DOMI se reserva o direito de utilizar todos os meios válidos e possíveis para identificar seus Usuários, bem como solicitar dados adicionais e documentos que entenda serem pertinentes, a fim de conferir os dados pessoais informados.\nd. Caso a DOMI considere um cadastro, ou as informações nele contidas, suspeito de conter dados errôneos ou inverídicos, se reserva o direito de suspender, temporária ou definitivamente, o Usuário responsável pelo cadastramento, sem prejuízo de outras medidas que entenda necessárias e oportunas. No caso de aplicação de quaisquer destas sanções, não assistirá aos Usuários direito a qualquer tipo de indenização ou ressarcimento por perdas e danos, lucros cessantes ou danos morais.\ne. O Usuário acessará sua conta por meio do login (nome ou e-mail) e senha, comprometendo-se a não informar a terceiros esses dados, responsabilizando-se integralmente pelo uso que deles seja feito.\nf. O Usuário compromete-se a notificar a DOMI imediatamente, por meio dos canais de contato mantidos pela DOMI na Plataforma, a respeito de qualquer uso não autorizado de sua conta. O Usuário será o único responsável pelas operações efetuadas em sua conta, uma vez que o acesso só será possível mediante a utilização de senha de seu exclusivo conhecimento.\ng. Em nenhuma hipótese será permitida a cessão, venda, aluguel ou outra forma de transferência da conta. Não se permitirá, ainda, a criação de novos cadastros por pessoas cujos cadastros originais tenham sido cancelados por infrações às políticas da DOMI.\nh. A DOMI se reserva o direito de, unilateralmente e sem prévio aviso, recusar qualquer solicitação de cadastro e de cancelar um cadastro previamente aceito.\n\n4. DA MODIFICAÇÕES DOS TERMOS E CONDIÇÕES GERAIS\na. A DOMI poderá alterar, a qualquer tempo e a seu único e exclusivo critério, estes Termos. Os novos Termos entrarão em vigor 10 (dez) dias depois de publicados na Plataforma. No prazo de 5 (cinco) dias contados a partir da publicação das modificações, o Usuário deverá informar, por e-mail, caso não concorde com os termos alterados. \nb. As alterações não vigorarão em relação a negociações entre Prestador e Contratante já iniciados ao tempo em que tais alterações sejam publicadas. Apenas para estes, os Termos valerão com a redação anterior.\nc. Os serviços oferecidos pela DOMI poderão ser diferentes para cada região do país. Estes Termos deverão ser interpretados de acordo com a região em que foi efetuado o cadastro do Prestador.\n\n5. DO ACEITE DE ORÇAMENTOS\na. Os Contratantes escolherão os Serviços que pretendem contratar, momento em que terão acesso ao link que direcionará ao contato direto do prestador de serviço, ao qual os orçamentos serão disponibilizados pelos mesmos, podendo firmar a prestação de serviço ou não, a livre decisão das partes.\nb. Os dados dos usuários (contratantes) em momento algum serão disponibilizados na plataforma, somente o Contratante terá acesso a informação do contato do Prestador através do link de acesso.\n\n6. DA PRIVACIDADE DA INFORMAÇÃO\na. Todas as informações e os dados pessoais prestados pelo Usuário a DOMI são armazenados em servidores.\nb. A DOMI tomará todas as medidas possíveis para manter a confidencialidade e a segurança descritas nesta cláusula, mas não será responsável por prejuízo que possa ser derivado da violação dessas medidas por parte de terceiros que utilizem de meios indevidos, fraudulentos ou ilegais para acessar as informações armazenadas nos servidores ou nos bancos de dados utilizados pela DOMI.\nc. A DOMI não tem acesso ao conteúdo das ligações ou comunicações entre os Usuários e prestadores de serviços.\nd. A DOMI, por motivos legais, manterá em seu banco de dados todas as informações coletadas dos Usuários caso necessário, os direitos do titular podem ser solicitados por meio de um canal de atendimento.\ne. O apelido e a senha de cada Usuário servem para garantir a privacidade e a sua segurança. DOMI recomenda a seus Usuários que não compartilhem essas informações com ninguém. DOMI não se responsabiliza por danos ou prejuízos causados ao Usuário pelo compartilhamento dessas informações.\nf. A DOMI coleta e guarda todas as informações prestadas por seus usuários durante a utilização de sua Plataforma, incluindo no momento do cadastramento, para uso próprio e de seus parceiros comerciais.\ng. O nome, e-mail e outros dados dos Usuários poderão ser utilizados para o envio de notificações, informações sobre a conta ou Serviços prestados, avisos sobre violações ao termo e outras comunicações que DOMI considerar necessárias. Os Usuários poderão requisitar a DOMI a sua exclusão de sua lista de envio de mensagens.\nh. A DOMI prestará todas as informações requisitadas por órgãos públicos, desde que devidamente justificadas e compatíveis com a lei em vigor.\n\n7. DOS SERVIÇOS, ANÚNCIOS E ORÇAMENTOS PROIBIDOS\na. A DOMI é uma Plataforma de classificados online de Serviços, estando proibida a veiculação de qualquer anúncio ou pedido de orçamento de venda, aluguel, troca ou qualquer forma de transferência de posse ou propriedade de qualquer bem móvel ou imóvel.\nb. Estão proibidas também a veiculação de anúncios de serviços ilegais de acordo com a legislação vigente ou que possam ser considerados ofensivos a terceiros.\nc. A DOMI não realiza uma curadoria prévia dos anúncios veiculados na Plataforma.\nd. Qualquer usuário, pessoa física ou jurídica, que se sentir ofendido por qualquer anúncio veiculado na Plataforma, poderá requisitar, pelos seus canais de atendimento, de forma fundamentada, que a DOMI exclua o anúncio, o que será avaliado pela DOMI.\n\n8. DAS OBRIGAÇÕES ENTRE CONTRATANTE (USUÁRIOS) E PRESTADOR DE SERVIÇO\na. Em virtude de a DOMI não figurar como parte nas transações de contratação dos Serviços que se realizam entre os Usuários, a responsabilidade por todas as obrigações delas decorrentes, sejam fiscais, trabalhistas, consumeristas ou de qualquer outra natureza, será exclusivamente do Contratante, do Prestador ou de ambos, conforme o caso. \nb. A DOMI não se responsabiliza pelas obrigações tributárias que recaiam sobre as atividades dos Prestadores. Assim como estabelece a legislação pertinente em vigor, o Contratante deverá exigir nota fiscal do Prestador em suas transações. O Prestador, nos moldes da lei vigente, responsabilizar-se-á pelo cumprimento da integralidade das obrigações oriundas de suas atividades, notadamente aqueles referentes a tributos incidentes.\n\n9. DAS RESPONSABILIDADES\na. A DOMI não se responsabiliza por vícios, defeitos técnicos e/ou operacionais oriundos do sistema do Usuário ou de terceiros.\nb. A DOMI não é responsável pela entrega dos Serviços anunciados pelos Prestadores na Plataforma.\nc. A DOMI tampouco se responsabiliza pela existência, quantidade, qualidade, estado, integridade ou legitimidade dos Serviços oferecidos ou contratados pelos Usuários, assim como pela capacidade para contratar dos Usuários ou pela veracidade dos dados pessoais por eles fornecidos. A DOMI, por não ser proprietária, depositante ou detentora dos produtos/serviços oferecidos, não outorga garantia por vícios ocultos ou aparentes nas negociações entre os Usuários. \nd. A DOMI não será responsável por ressarcir seus Usuários por quaisquer gastos com ligações telefônicas, pacotes de dados, SMS, mensagens, e-mails, correspondência ou qualquer outro valor despendido pelo Usuário em razão de contato com a DOMI ou quaisquer outros Usuário, por qualquer motivo que o seja.\ne. A DOMI não poderá ser responsabilizada pelo efetivo cumprimento das obrigações assumidas pelos Usuários. Os Usuários reconhecem e aceitam que, ao realizar negociações com outros Prestadores, fazem-no por sua conta e risco, reconhecendo o DOMI como mero fornecedor de serviços de disponibilização de espaço virtual para anúncio dos Serviços ofertados por terceiros.\nf. Em nenhum caso DOMI será responsável pelo lucro cessante ou por qualquer outro dano e/ou prejuízo que o Usuário possa sofrer devido às negociações realizadas ou não realizadas por meio de Plataforma, decorrentes da conduta dos Prestadores.\ng. Por se tratar de negociações realizadas por meio eletrônico, que não se conheciam previamente à negociação, a DOMI recomenda que toda transação seja realizada com cautela e prudência.\nh. Caso um ou mais Usuários, Prestadores de Serviços ou algum terceiro inicie qualquer tipo de reclamação ou ação legal, todos e cada dos envolvidos nas reclamações ou ações declaram expressamente que eximem de toda responsabilidade a DOMI e seus diretores, gerentes, empregados, agentes, operários, representantes e procuradores.\n\n10. DO ALCANCE DOS SERVIÇOS\na. Estes Termos não geram nenhum contrato de sociedade, de mandato, de franquia ou relação de trabalho entre DOMI e os Prestadores de Serviços. O Usuário manifesta ciência de que o DOMI não é parte de nenhuma transação realizada entre os mesmos, nem possui controle algum sobre a qualidade, a segurança, qualificação ou legalidade dos Serviços anunciados pelos Prestadores, sobre a veracidade ou a exatidão dos anúncios elaborados, e sobre a capacidade dos Usuário e Prestadores para negociar.\nb. A DOMI não pode assegurar o êxito de qualquer transação realizada entre as partes. A DOMI não garante a veracidade da publicação de terceiros que apareça em sua Plataforma e não será responsável pela correspondência ou por contratos que o Usuário realize com terceiros.\n\n11. DOS PROBLEMAS DECORRENTES DO USO DO SISTEMA\na. A DOMI não se responsabiliza por qualquer dano, prejuízo ou perda sofridos pelo Usuário em razão de falhas em sua conexão com a internet, com o seu provedor, no sistema, com o sistema de SMS, com a linha telefônica ou no servidor utilizados pelo Usuário, decorrentes de condutas de terceiros, caso fortuito ou força maior.\nb. A DOMI não é responsável pela compatibilidade entre a sua Plataforma e hardwares de propriedade do Usuário. O Usuário deverá manter o seu equipamento atualizado e não poderá responsabilizar DOMI caso a Plataforma não seja acessível em equipamentos antiquados.\nc. A DOMI também não será responsável por qualquer vírus, trojan, malware, spyware ou qualquer software que possa danificar, alterar as configurações ou infiltrar o equipamento do Usuário em decorrência do acesso, da utilização ou da navegação na internet, ou como consequência da transferência de dados, informações, arquivos, imagens, textos ou áudio.\n\n12. DA PROPRIEDADE INTELECTUAL E LINKS\na. O uso comercial da expressão \"DOMI\" como marca, nome empresarial ou nome de domínio, bem como os logos, marcas, insígnias, conteúdo das telas relativas aos serviços da Plataforma e o conjunto de programas, bancos de dados, redes e arquivos que permitem que o Usuário acesse e use sua conta, são propriedade da DOMI e estão protegidos pelas leis e pelos tratados internacionais de direito autoral, de marcas, de patentes, de modelos e de desenhos industriais. O uso indevido e a reprodução total ou parcial dos referidos conteúdos são proibidos, salvo com autorização expressa da DOMI.\n\n13. LEGISLAÇÃO APLICÁVEL E FORO DE ELEIÇÃO\na. Todos os itens destes Termos são regidos pelas leis vigentes na República Federativa do Brasil. Para todos os assuntos referentes à interpretação, ao cumprimento ou a qualquer outro questionamento relacionado a estes Termos, as partes concordam em se submeter ao Foro da Comarca de Santarém/Pará.',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 20.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('registro');
                                    },
                                    text: 'Cancel',
                                    options: FFButtonOptions(
                                      padding: EdgeInsets.all(24.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('registro');
                                    },
                                    text: 'Aceitar termo de condição',
                                    options: FFButtonOptions(
                                      width: 250.0,
                                      padding: EdgeInsets.all(24.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 1.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
