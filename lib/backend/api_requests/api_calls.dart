import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Mercado Pago Group Code

class MercadoPagoGroup {
  static String baseUrl = 'https://api.mercadopago.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization':
        'Bearer APP_USR-3368535529432197-032216-4821477ba859b0b40c5e7d364a2c6724-1722017230',
  };
  static CriarPagamentoPixCall criarPagamentoPixCall = CriarPagamentoPixCall();
  static BuscarPagamentoCall buscarPagamentoCall = BuscarPagamentoCall();
}

class CriarPagamentoPixCall {
  Future<ApiCallResponse> call({
    String? aleatoria = '2121212424',
    double? transactionAmount,
    String? description = '',
    String? email = '',
    String? firtsName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "transaction_amount": ${transactionAmount},
  "description": "${description}",
  "payment_method_id": "pix",
  "payer": {
    "email": "${email}",
    "first_name": "${firtsName}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar pagamento pix',
      apiUrl: '${MercadoPagoGroup.baseUrl}/payments',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer APP_USR-3368535529432197-032216-4821477ba859b0b40c5e7d364a2c6724-1722017230',
        'X-idempotency-key': '${aleatoria}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? qrcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code''',
      ));
}

class BuscarPagamentoCall {
  Future<ApiCallResponse> call({
    String? iddopedido = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar pagamento',
      apiUrl: '${MercadoPagoGroup.baseUrl}/payments/${iddopedido}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer APP_USR-3368535529432197-032216-4821477ba859b0b40c5e7d364a2c6724-1722017230',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

/// End Mercado Pago Group Code

class CriarPIXCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'APP_USR-3368535529432197-032216-4821477ba859b0b40c5e7d364a2c6724-1722017230',
    String? stringrandomica = 'effefggbfdgrghg',
    String? description = 'Descricao Produto',
    double? transactionAmount = 250,
    String? email = 'gilsunetto@gmail.com',
    String? firstName = 'Domi',
    String? paymentMethodId = 'pix',
    String? type = 'CPF',
    String? number = '93992084940',
  }) async {
    final ffApiRequestBody = '''
{
  "description": "${description}",
  "transaction_amount": ${transactionAmount},
  "payment_method_id": "${paymentMethodId}",
  "payer": {
    "email": "${email}",
    "first_name": "${firstName}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar PIX',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer APP_USR-3368535529432197-032216-4821477ba859b0b40c5e7d364a2c6724-1722017230',
        'X-Idempotency-Key': '${stringrandomica}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? idPedido(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static dynamic? chavePix(dynamic response) => getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data''',
      );
  static String? mensagemerro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.ticket_url''',
      ));
  static String? qrcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code''',
      ));
}

class StatusPixCall {
  static Future<ApiCallResponse> call({
    int? idPix,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Status Pix',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${idPix}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer APP_USR-3368535529432197-032216-4821477ba859b0b40c5e7d364a2c6724-1722017230',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class CriarTokenCall {
  static Future<ApiCallResponse> call({
    String? cardNumber = '',
    String? cardholderName = '',
    String? cardExpirationMonth = '',
    String? cardExpirationYear = '',
    String? securityCode = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? accessToken = '',
    String? publicKey = '',
  }) async {
    final ffApiRequestBody = '''
{
  "card_number": "${cardNumber}",
  "cardholder": {
    "name": "${cardholderName}",
    "identification": {
      "type": "${identificationType}",
      "number": "${identificationNumber}"
    }
  },
  "security_code": "${securityCode}",
  "expiration_month": "${cardExpirationMonth}",
  "expiration_year": "${cardExpirationYear}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Token',
      apiUrl:
          'https://api.mercadopago.com/v1/card_tokens?public_key=${publicKey}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static String? errortoken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class PagamentoCartaoMPCall {
  static Future<ApiCallResponse> call({
    double? transactionAmount,
    String? token = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? zipCode = '',
    String? streetName = '',
    String? streetNumber = '',
    String? neighborhood = '',
    String? city = '',
    String? federalUnit = '',
    String? description = '',
    String? accessToken = '',
    int? installments,
  }) async {
    final ffApiRequestBody = '''
{
  "transaction_amount": ${transactionAmount},
  "token": "${token}",
  "installments": ${installments},
  "payer": {
    "first_name": "${firstName}",
    "last_name": "${lastName}",
    "email": "${email}",
    "type": "customer",
    "identification": {
      "type": "${identificationType}",
      "number": "${identificationNumber}"
    },
    "address": {
      "zip_code": "${zipCode}",
      "street_name": "${streetName}",
      "street_number": "${streetNumber}",
      "neighborhood": "${neighborhood}",
      "city": "${city}",
      "federal_unit": "${federalUnit}"
    }
  },
  "descripition": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pagamento Cartao MP',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorcartao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
