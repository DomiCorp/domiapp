import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termodecondicaoprofissional_model.dart';
export 'termodecondicaoprofissional_model.dart';

class TermodecondicaoprofissionalWidget extends StatefulWidget {
  const TermodecondicaoprofissionalWidget({super.key});

  @override
  State<TermodecondicaoprofissionalWidget> createState() =>
      _TermodecondicaoprofissionalWidgetState();
}

class _TermodecondicaoprofissionalWidgetState
    extends State<TermodecondicaoprofissionalWidget> {
  late TermodecondicaoprofissionalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermodecondicaoprofissionalModel());

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
                                        'Termos e condições gerais de uso do APP – Prestadores de Serviços',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 28.0,
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
                              'ALEX RIPARDO DA SILVA, pessoa jurídica de direito privado, inscrita no CNPJ sob o nº. 52.877.113/0001-73, nome fantasia: DOMI, sito na Rua Padre Felipe Betendorf, 1710, entre alvorada e palhão, CEP: 68020580, nesta Cidade de Santarém-Pará, CEP: 68020580, nesta Cidade de Santarém-Pará, prestadora de serviços de anúncios online realizados entre os contratantes e promitentes Prestadores de serviço, por meio do aplicativo.\n\nPor intermédio destes Termos e Condições Gerais de Uso, a DOMI apresenta aos usuários Contratantes, as condições essenciais para o uso dos serviços oferecidos na Plataforma.\nAo utilizar a Plataforma ou utilizar os serviços ofertados pela DOMI, os usuários aceitam e se submetem às condições destes Termos e às Políticas de Privacidade, bem como a todos os documentos anexos a estes.\n\n1. DO OBJETO\na. Os serviços objeto do presente Termo consistem em:\nI.Permitir aos Contratantes que utilizem a Plataforma para livremente e sem direcionamento ou interferência da DOMI busquem orçamentos dos Prestadores de serviços com ATUAÇÃO EXCLUSIVA NA CIDADE DE SANTARÉM/PA;\nII.O Modelo de acesso ao link do telefone pessoal, apresenta os orçamentos requeridos pelos Contratantes aos Prestadores, que poderão oferecer ou não os seus Serviços, ao seu critério. \nIII.Viabilizar o contato direto entre Prestadores e Contratantes interessados em adquirir os Serviços, por meio da divulgação das informações de contato de uma parte à outra.\nIV.A DOMI, portanto, possibilita que os Usuários e Prestadores contatem-se e negociem entre si DIRETAMENTE, sem intervir no contato, na negociação ou na efetivação dos negócios, não sendo, nesta qualidade, fornecedor de quaisquer serviços anunciados por seus Usuários na Plataforma.\nb. Na qualidade de classificado de Serviços, a DOMI não impõe ou interfere em qualquer negociação sobre condição, valor, qualidade, forma ou prazo da contratação entre os Contratantes e Prestadores de Serviços..\n\n2. DA CAPACIDADE PARA CADASTRAR-SE:\na. Os serviços da DOMI estão disponíveis para pessoas físicas e pessoas jurídicas regularmente inscritas, sem nenhum impedimento e com anuidade em dia no conselho da classe profissional que rege a profissão, quando necessário, nos cadastros de contribuintes federal e estaduais, e que tenham capacidade legal para contratá-los. Não podem utilizá-los, assim, pessoas que não gozem dessa capacidade, inclusive menores de idade ou pessoas que tenham sido inabilitadas na DOMI, temporária ou definitivamente. Ficam, desde já, os Prestadores de Serviços advertidos das sanções legais cominadas pelo Código Civil.\nb. Os prestadores de serviço afirmam que as informações prestadas são verdadeiras, que estão aptos a exercer a prestação de serviço, que possuem formação superior e estão em dia com a anuidade no conselho de classe. Sendo identificado qualquer irregularidade, a DOMI poderá excluir imediatamente o prestador de serviço, não sendo devida nenhuma indenização ou restituição, respondendo exclusivamente por todos os danos causados a terceiros a própria DOMI.\n c. É vedada a criação de mais de um cadastro pelo prestador de serviço. Em caso de multiplicidade de cadastros elaborados por um só Usuário, a DOMI reserva-se o direito de a seu exclusivo critério e sem necessidade de prévia anuência ou comunicação aos Usuários, inabilitar todos os cadastros existentes e impedir eventuais cadastros futuros vinculados a estes.\nc. Somente será permitida a vinculação de um cadastro por CPF/CNPJ, telefone ou e-mail, não podendo haver duplicidade de dados em nenhum caso.\nd. A DOMI pode unilateralmente excluir o cadastro dos Prestadores de Serviços quando verificado que a conduta do Prestador é ou será prejudicial ou ofensiva a outros Usuários, a DOMI e seus funcionários ou a terceiros.\n\n3. DO CADASTRO\na. É necessário o preenchimento completo de todos os dados pessoais, profissionais, dentre outros, exigidos pelo DOMI no momento do cadastramento, para que o Prestador de Serviços esteja habilitado a utilizar a Plataforma.\nb. É de exclusiva responsabilidade dos Prestadores fornecer, atualizar e garantir a veracidade dos dados cadastrais, não cabendo a DOMI qualquer tipo de responsabilidade civil e/ou criminal resultante de dados inverídicos, incorretos, fraudulentos ou incompletos fornecidos pelos Prestadores.\nc. A DOMI se reserva o direito de utilizar todos os meios válidos e possíveis para identificar seus Prestadores de Serviço, bem como solicitar dados adicionais e documentos que entenda serem pertinentes, a fim de conferir as informações fornecidas.\nd. Caso a DOMI considere um cadastro, ou as informações nele contidas, suspeito de conter dados errôneos ou inverídicos, se reserva o direito de suspender, temporária ou definitivamente, o prestador de serviço, assim como impedir e bloquear qualquer publicidade ou cadastro de Serviços, bem como cancelar anúncios publicados por este, sem prejuízo de outras medidas que entenda necessárias e oportunas. No caso de aplicação de quaisquer destas sanções, não assistirá aos Prestadores o direito a qualquer tipo de indenização ou ressarcimento por perdas e danos, lucros cessantes ou danos morais.\ne. O Prestador de Serviço acessará sua conta por meio de apelido (login) e senha, comprometendo-se a não informar a terceiros esses dados, responsabilizando-se integralmente pelo uso que deles seja feito.\nf. O Usuário/Prestador compromete-se a notificar a DOMI imediatamente, por meio dos canais de contato mantidos pela DOMI na Plataforma, a respeito de qualquer uso não autorizado de sua conta. O Usuário será o único responsável pelas operações efetuadas em sua conta, uma vez que o acesso só será possível mediante a utilização de senha de seu exclusivo conhecimento.\ng. Em nenhuma hipótese será permitida a cessão, venda, aluguel ou outra forma de transferência da conta. Não se permitirá, ainda, a criação de novos cadastros por pessoas cujos cadastros originais tenham sido cancelados por infrações às políticas da DOMI.\nh. O apelido que o Usuário utiliza na DOMI não poderá guardar semelhança com o nome DOMI, tampouco poderá ser utilizado qualquer apelido que insinue ou sugira que os Serviços serão prestados pelo DOMI ou que façam parte de promoções suas. Também serão eliminados apelidos considerados ofensivos ou que infrinjam a legislação em vigor.\ni. Não é permitido aos Prestadores se apresentarem aos Contratantes como funcionários, Prestadores de serviço ou contratados da DOMI. Os Contratantes entendem que os Prestadores não são subordinados a DOMI de nenhuma forma, exercendo atividade autônoma.\n\n4. DA MODIFICAÇÕES DOS TERMOS E CONDIÇÕES GERAIS\na. A DOMI poderá alterar, a qualquer tempo e a seu único e exclusivo critério, estes Termos. Os novos Termos entrarão em vigor 10 (dez) dias depois de publicados na Plataforma. No prazo de 5 (cinco) dias contados a partir da publicação das modificações, os Prestadores deverão informar, por e-mail, caso não concorde com os termos alterados. Nesse caso, a critério da DOMI, o vínculo contratual deixará de existir, desde que não haja contas ou dívidas em aberto. Não havendo manifestação no prazo estipulado, entender-se-á que o Usuário aceitou tacitamente os novos Termos, e o contrato continuará vinculando as partes.\nb. As alterações não vigorarão em relação a negociações entre Prestador e Contratante já iniciados ao tempo em que tais alterações sejam publicadas. Apenas para estes, os Termos valerão com a redação anterior.\nc. Os serviços oferecidos pela DOMI poderão ser diferentes para cada região do país. Estes Termos deverão ser interpretados de acordo com a região em que foi efetuado o cadastro do Prestador.\n\n5. DO ACEITE DE ORÇAMENTOS\na. Os Prestadores de Serviços disponibilizarão os seus serviços na plataforma, e os Contratantes  escolherão os que pretendem contratar, momento em que terão acesso ao link que direcionará ao contato direto do prestador de serviço, ao qual os orçamentos serão disponibilizados pelos mesmos, podendo firmar a prestação de serviço ou não, a livre decisão das partes.\nb. Os dados de contato dos Contratantes em momento algum serão disponibilizados ao Prestador, somente o Contratante terá acesso à informação do contato do Prestador de serviço, através do link de acesso, para iniciar ao critério de ambos, a possível negociação.\nc. O Prestador reconhece que, ao se cadastrar na plataforma não estará garantido sua venda ou qualquer negociação, não podendo responsabilizar a DOMI pelo insucesso de uma eventual negociação com o Contratante, qualquer que seja o motivo, incluindo dados cadastrais desatualizados ou incorretos inseridos pelo Prestador.\n\n6. DA PRIVACIDADE DA INFORMAÇÃO\na. Todas as informações e os dados pessoais prestados pelo Usuário a DOMI são armazenados em servidores.\nb. A DOMI tomará todas as medidas possíveis para manter a confidencialidade e a segurança descritas nesta cláusula, mas não será responsável por prejuízo que possa ser derivado da violação dessas medidas por parte de terceiros que utilizem de meios indevidos, fraudulentos ou ilegais para acessar as informações armazenadas nos servidores ou nos bancos de dados utilizados pela DOMI.\nc. A DOMI não tem acesso ao conteúdo das ligações ou comunicações entre os Usuários e Prestadores de Serviços.\nd. A DOMI, por motivos legais, manterá em seu banco de dados todas as informações coletadas dos Usuários caso necessário, os direitos do titular podem ser solicitados por meio de um canal de atendimento.\ne. O apelido e a senha de cada Usuário servem para garantir a privacidade e a sua segurança. DOMI recomenda a seus Usuários que não compartilhem essas informações com ninguém. DOMI não se responsabiliza por danos ou prejuízos causados ao Usuário pelo compartilhamento dessas informações.\nf. A DOMI coleta e guarda todas as informações prestadas por seus usuários durante a utilização de sua Plataforma, incluindo no momento do cadastramento, para uso próprio e de seus parceiros comerciais.\ng. O nome, e-mail e outros dados dos Usuários poderão ser utilizados para o envio de notificações, informações sobre a conta ou Serviços prestados, avisos sobre violações ao termo e outras comunicações que DOMI considerar necessárias. Os Usuários poderão requisitar a DOMI a sua exclusão de sua lista de envio de mensagens.\nh. A DOMI prestará todas as informações requisitadas por órgãos públicos, desde que devidamente justificadas e compatíveis com a lei em vigor.\ni. A DOMI utiliza cookies e softwares de monitoramento de seus Usuários para prover a melhor navegação possível, baseado em suas necessidades, e para pesquisas internas. Esses cookies não coletam informações pessoais, apenas informam preferências de uso e de navegação de cada Usuário, além de prover a DOMI estatísticas e dados para aprimorar seus serviços.\n\n7. DAS TARIFAS/ DO PRAZO PARA ACESSO\na. Os Prestadores de Serviços adquirirão o acesso ao aplicativo por meio dos planos (mensal, semestral ou anual), a sua livre escolha, para acessar as funcionalidades da Plataforma DOMI, sendo o pagamento sempre na forma antecipada. \nb. Os planos serão adquiridos na própria plataforma, após aceitar os Termos e condições gerais de uso.\nc. Em caso de alteração dos valores dos planos, a DOMI notificará o prestador de serviço em 30 (trinta) dias antes da vigência, e esse novo valor somente será aplicado para novas contratações ou renovações dos serviços da plataforma.\nd. O plano adquirido terá como forma de pagamento, Depósito/Transferência bancária, boleto ou cartão de crédito, a ser definida pelo Prestador de Serviço após a escolha do plano.\ne. Após a confirmação do pagamento, a DOMI terá até 5 (cinco) dias úteis para confirmar o cadastro e liberar o acesso ao Usuário, contando o prazo de uso apenas após a efetiva liberação. No caso de recusa pela DOMI ao cadastro do Prestador de serviço, o acesso será recusado, com a devolução integral do valor.\n\n8. DA POLÍTICA DE CANCELAMENTO\na. O Prestador de Serviço poderá cancelar a assinatura da plataforma a qualquer momento, independente do plano escolhido.\nb. No plano mensal, não será restituído o valor, não incidirá multa por rescisão contratual, permanecendo a plataforma a disposição por todo o período contratado.\nc. Na escolha do plano semestral, o Prestador pagará uma multa de R\$ 300,00 (trezentos reais) na hipótese de rescisão contratual, com dispensa do pagamento das parcelas futuras, ressalvando que não caberá restituição do valor pago pelo período já utilizado da plataforma, permanecendo o acesso a plataforma a disposição do Prestador até o último dia do mês da rescisão.\nd. Na escolha do plano anual, o Prestador pagará uma multa de R\$ 500,00 (quinhentos  reais) na hipótese de rescisão contratual, com dispensa do pagamento das parcelas futuras, ressalvando que não caberá restituição do valor pago pelo período já utilizado da plataforma, permanecendo o acesso a plataforma a disposição do Prestador até o último dia do mês da rescisão.\ne. Salienta-se que o pagamento do valor contratual será sempre de forma antecipada, e quando do pagamento através de cartão de crédito ou em única parcela por transferência bancária, haverá o estorno/restituição do valor referente as parcelas futuras, e na hipótese de boletos, os mesmos serão baixados, conforme o plano contratado.\n\n9. DOS SERVIÇOS, ANÚNCIOS E ORÇAMENTOS PROIBIDOS\na. A DOMI é uma Plataforma de classificados online de Serviços, estando proibida a veiculação de qualquer anúncio ou pedido de orçamento de venda, aluguel, troca ou qualquer forma de transferência de posse ou propriedade de qualquer bem móvel ou imóvel.\nb. Estão proibidas também a veiculação de anúncios de serviços ilegais e irregulares de acordo com a legislação vigente ou que possam ser considerados ofensivos a terceiros.\nc. A DOMI excluirá, unilateralmente e sem qualquer comunicação prévia, aquele Usuário que desrespeitar as regras contidas nesta seção.\nd. A DOMI não realiza uma curadoria prévia dos anúncios veiculados na Plataforma, sendo de integral responsabilidade do Prestador de Serviços todas as informações e serviços ofertados.\ne. Qualquer Usuário ou pessoa física ou jurídica que se sentir ofendido por qualquer anúncio veiculado na Plataforma poderá requisitar a DOMI que exclua aquele anúncio da Plataforma, pelos seus canais de atendimento.\n\n10. OBRIGAÇÕES DOS USUÁRIOS\na. O Prestador deve ter capacidade legal para prestar o Serviço.\nb. Em virtude da DOMI não figurar como parte nas transações de contratação dos Serviços que se realizam entre os Usuários, a responsabilidade por todas as obrigações delas decorrentes, sejam fiscais, trabalhistas, consumeristas ou de qualquer outra natureza, será exclusivamente do Contratante, do Prestador ou de ambos, conforme o caso. Na hipótese de interpelação judicial que tenha como Réu a DOMI, cujos fatos fundem-se em ações do Prestador, este será chamado ao processo, devendo arcar com todos os ônus que daí decorram, incluindo despesas com taxas, emolumentos, acordos, honorários advocatícios entre outros. Por não figurar como parte nas transações que se realizam entre os Usuários, DOMI também não pode obrigar os Usuários a honrarem suas obrigações ou a efetivarem a negociação.\nc. O Prestador deverá ter em mente que, na medida em que atue como um fornecedor de serviços, sua oferta o vincula, nos termos do artigo 30 do Código de Defesa do Consumidor e do artigo 429 do Código Civil, cujo cumprimento poderá ser exigido judicialmente pelo Contratante.\nd. DOMI não se responsabiliza pelas obrigações tributárias que recaiam sobre as atividades dos Usuários. Assim como estabelece a legislação pertinente em vigor, o Contratante deverá exigir nota fiscal do Prestador em suas transações. O Prestador, nos moldes da lei vigente, responsabilizar-se-á pelo cumprimento da integralidade das obrigações oriundas de suas atividades, notadamente aqueles referentes a tributos incidentes.\ne. Os Prestadores se comprometem a cobrar um valor justo a profissão, seguindo as normas do conselho de sua profissão.\n\n11. DAS PRÁTICAS VEDADAS\na. É terminantemente vedado aos Prestadores de Serviços, entre outras atitudes previstas nestes Termos, manipular, direta ou indiretamente, os preços dos Serviços anunciados.\nb. É proibido aos Prestadores divulgar o mesmo anúncio, conteúdo, item ou serviço em mais de uma categoria e/ou de forma repetida. A DOMI se reserva o direito de excluir anúncios ou serviços repetidos, assim como suspender ou excluir o cadastro do Prestador responsável pela duplicidade.\nc. Os Usuários não poderão: (i) Obter, guardar, divulgar, comercializar e/ou utilizar dados pessoais sobre outros Usuários para fins comerciais ou ilícitos; (ii) Burlar, ou tentar burlar, de qualquer forma que seja, o sistema, mecanismo e/ou a Plataforma; e (iii) incluir meios de contato como telefone, e-mail, endereço e outras formas de comunicação nas ofertas.\n\n12. DA VIOLAÇÃO NO SISTEMA OU DA BASE DE DADOS\na. É vedada a utilização de dispositivo, software ou outro recurso que possa interferir nas atividades e nas operações de Plataforma, bem como nos anúncios, nas descrições, nas contas ou em seus bancos de dados. Qualquer intromissão, tentativa de, ou atividade que viole ou contrarie as leis de direito de propriedade intelectual e as proibições estipuladas nestes Termos tornará o responsável passível de sofrer os efeitos das ações legais pertinentes, bem como das sanções aqui previstas, sendo ainda responsável por indenizar DOMI ou seus Usuários por eventuais danos causados.\n\n13. DAS SANÇÕES\na. Sem prejuízo de outras medidas, a DOMI poderá, a seu exclusivo critério e sem necessidade de prévia anuência ou comunicação aos Usuários, advertir, suspender ou cancelar, temporária ou permanentemente, o cadastro ou os anúncios do Usuário, podendo aplicar sanção que impacte negativamente em sua reputação, a qualquer tempo, iniciando as ações legais cabíveis e suspendendo a prestação de seus serviços, se: (i) o Usuário não cumprir qualquer dispositivo destes Termos e as demais políticas da DOMI; (ii) descumprir com seus deveres de Prestador de Serviço; (iii) praticar atos delituosos ou criminais; (iv) não puder ser verificada a identidade do Usuário, qualquer informação fornecida por ele esteja incorreta ou se as informações prestadas levarem a crer que o cadastro seja falso ou de pessoa diversa, ou ainda, se o Prestador estiver oferecendo atividade sem o devido conhecimento técnico ou no exercício ilegal da profissão; (v) DOMI entender que os anúncios ou qualquer outra atitude do Usuário tenham causado algum dano a terceiros ou a DOMI ou tenham a potencialidade de assim o fazer, e ainda, em razão da comprovação ou suspeita de fraude contra DOMI ou Contratantes.\nb. Nos casos de suspensão, temporária ou permanente do cadastro do Prestador, todos os anúncios ativos e as ofertas realizadas serão automaticamente canceladas.\ni. Em caso de suspensão temporária, o plano contratado pelo Prestador será suspenso até a reabilitação do cadastro do Prestador, quando voltará a viger normalmente.\nii. Em caso de suspensão permanente ou exclusão do Prestador, a DOMI adotará os critérios de cancelamento descritos no item 8. DA POLÍTICA DE CANCELAMENTO, conforme o plano contratado, considerando que o cancelamento se deu por culpa exclusiva do Prestador de Serviço.\nc. DOMI se reserva o direito de, a qualquer momento e a seu exclusivo critério, solicitar o envio de documentação pessoal ou de qualquer documento que comprove a veracidade das informações cadastrais.\ni. Em caso de requisição de documentos, quaisquer prazos determinados nestes Termos só serão aplicáveis a partir da data de recebimento dos documentos solicitados ao Prestador por DOMI.\n\n14.  DAS RESPONSABILIDADES\na. A DOMI não se responsabiliza por vícios ou defeitos técnicos e/ou operacionais oriundos do sistema do Usuário ou de terceiros.\nb. A DOMI não é responsável pela entrega dos Serviços anunciados pelos Prestadores na Plataforma.\nc. A DOMI tampouco se responsabiliza pela existência, quantidade, qualidade, estado, integridade ou legitimidade dos Serviços oferecidos ou contratados pelos Usuários, assim como pela capacidade para contratar dos Usuários ou pela veracidade dos dados pessoais por eles fornecidos. A DOMI, por não ser proprietária, depositante ou detentora dos produtos/serviços oferecidos, não outorga garantia por vícios ocultos ou aparentes nas negociações entre os Usuários. Cada Usuário conhece e aceita ser o único responsável pelos Serviços que anuncia ou pelas ofertas que realiza.\nd. A DOMI não será responsável por ressarcir seus Usuários por quaisquer gastos com ligações telefônicas, pacotes de dados, SMS, mensagens, emails, correspondência ou qualquer outro valor despendido pelo Usuário em razão de contato com a DOMI ou quaisquer outros Usuário, por qualquer motivo que o seja.\ne. A DOMI não poderá ser responsabilizada pelo efetivo cumprimento das obrigações assumidas pelos Usuários. Os Usuários reconhecem e aceitam que, ao realizar negociações com outros Usuários, fazem-no por sua conta e risco, reconhecendo o DOMI como mero fornecedor de serviços de disponibilização de espaço virtual para anúncio dos Serviços ofertados por terceiros.\nf. Em nenhum caso DOMI será responsável pelo lucro cessante ou por qualquer outro dano e/ou prejuízo que o Usuário possa sofrer devido às negociações realizadas ou não realizadas por meio de Plataforma, decorrentes da conduta de outros Usuários.\ng. Por se tratar de negociações realizadas por meio eletrônico entre dois Usuários que não se conheciam previamente à negociação, DOMI recomenda que toda transação seja realizada com cautela e prudência.\nh. Caso um ou mais usuários ou algum terceiro inicie qualquer tipo de reclamação ou ação legal contra outro ou outros Usuários, todos e cada um dos Usuários envolvidos nas reclamações ou ações eximem de toda responsabilidade DOMI e seus diretores, gerentes, empregados, agentes, operários, representantes e procuradores.\ni. A DOMI se reserva o direito de auxiliar e cooperar com qualquer autoridade judicial ou órgão governamental, podendo enviar informações cadastrais ou negociais de seus Usuários, servindo este termo como autorização, quando considerar que seu auxílio ou cooperação sejam necessários para proteger seus Usuários, funcionários, colaboradores, administradores, sócios ou qualquer pessoa que possa ser prejudicada pela ação ou omissão combatida.\n\n15. DO ALCANCE DOS SERVIÇOS\na. Estes Termos não geram nenhum contrato de sociedade, de mandato, de franquia ou relação de trabalho entre DOMI e o Usuário. O Usuário manifesta ciência de que o DOMI não é parte de nenhuma transação realizada entre Usuários, nem possui controle algum sobre a qualidade, a segurança ou a legalidade dos Serviços anunciados pelos Usuários, sobre a veracidade ou a exatidão dos anúncios elaborados pelos Usuários, e sobre a capacidade dos Usuários para negociar.\nb. A DOMI não pode assegurar o êxito de qualquer transação realizada entre Usuários, tampouco verificar a identidade ou os dados pessoais. A DOMI não garante a veracidade da publicação de terceiros que apareça em sua Plataforma e não será responsável pela correspondência ou por contratos que o Usuário realize com terceiros.\n\n16. DO PROBLEMAS DECORRENTES DO USO DO SISTEMA\na. A DOMI não se responsabiliza por qualquer dano, prejuízo ou perda sofridos pelo Usuário em razão de falhas em sua conexão com a internet, com o seu provedor, no sistema, com o sistema de SMS, com a linha telefônica ou no servidor utilizados pelo Usuário, decorrentes de condutas de terceiros, caso fortuito ou força maior.\nb. A DOMI não é responsável pela compatibilidade entre a sua Plataforma e hardwares de propriedade do Usuário. O Usuário deverá manter o seu equipamento atualizado e não poderá responsabilizar DOMI caso a Plataforma não seja acessível em equipamentos antiquados.\nc. A DOMI também não será responsável por qualquer vírus, trojan, malware, spyware ou qualquer software que possa danificar, alterar as configurações ou infiltrar o equipamento do Usuário em decorrência do acesso, da utilização ou da navegação na internet, ou como consequência da transferência de dados, informações, arquivos, imagens, textos ou áudio.\n\n17. DA PROPRIEDADE INTELECTUAL E LINKS\na. O uso comercial da expressão \"DOMI\" como marca, nome empresarial ou nome de domínio, bem como os logos, marcas, insígnias, conteúdo das telas relativas aos serviços da Plataforma e o conjunto de programas, bancos de dados, redes e arquivos que permitem que o Usuário acesse e use sua conta, são propriedade da DOMI e estão protegidos pelas leis. O uso indevido e a reprodução total ou parcial dos referidos conteúdos são proibidos, salvo com autorização expressa da DOMI.\n\n18. DA INDENIZAÇÃO\na. O Usuário indenizará a DOMI, suas filiais, empresas controladas, controladores diretos ou indiretos, diretores, administradores, colaboradores, representantes e empregados, inclusive quanto a honorários advocatícios, por qualquer demanda promovida por outros Usuários ou terceiros, decorrentes das atividades, de quaisquer descumprimentos, por aquele, dos Termos e das demais políticas da DOMI ou, ainda, de qualquer violação, pelo Usuário, de lei ou de direitos de terceiros.\n\n19.  DA LEGISLAÇÃO APLICÁVEL E FORO DE ELEIÇÃO\na. Todos os itens destes Termos são regidos pelas leis vigentes na República Federativa do Brasil. Para todos os assuntos referentes à interpretação, ao cumprimento ou a qualquer outro questionamento relacionado a estes Termos, as partes concordam em se submeter ao Foro da Comarca de Santarém/Pará.',
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
                                      context.pushNamed('termosdeservicoprofi');
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
                                      context.pushNamed('termosdeservicoprofi');
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
