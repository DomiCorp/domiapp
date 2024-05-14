import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _status = await secureStorage.getInt('ff_status') ?? _status;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  int _status = 0;
  int get status => _status;
  set status(int _value) {
    _status = _value;
    secureStorage.setInt('ff_status', _value);
  }

  void deleteStatus() {
    secureStorage.delete(key: 'ff_status');
  }

  double _valorTotal = 0.0;
  double get valorTotal => _valorTotal;
  set valorTotal(double _value) {
    _valorTotal = _value;
  }

  String _chavePix = '';
  String get chavePix => _chavePix;
  set chavePix(String _value) {
    _chavePix = _value;
  }

  String _QRcode = '';
  String get QRcode => _QRcode;
  set QRcode(String _value) {
    _QRcode = _value;
  }

  int _IdPedido = 0;
  int get IdPedido => _IdPedido;
  set IdPedido(int _value) {
    _IdPedido = _value;
  }

  String _metodoPagamento = '';
  String get metodoPagamento => _metodoPagamento;
  set metodoPagamento(String _value) {
    _metodoPagamento = _value;
  }

  bool _PesquisaON = false;
  bool get PesquisaON => _PesquisaON;
  set PesquisaON(bool _value) {
    _PesquisaON = _value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
