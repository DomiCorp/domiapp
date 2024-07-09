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
  set status(int value) {
    _status = value;
    secureStorage.setInt('ff_status', value);
  }

  void deleteStatus() {
    secureStorage.delete(key: 'ff_status');
  }

  double _valorTotal = 0.0;
  double get valorTotal => _valorTotal;
  set valorTotal(double value) {
    _valorTotal = value;
  }

  String _chavePix = '';
  String get chavePix => _chavePix;
  set chavePix(String value) {
    _chavePix = value;
  }

  String _QRcode = '';
  String get QRcode => _QRcode;
  set QRcode(String value) {
    _QRcode = value;
  }

  int _IdPedido = 0;
  int get IdPedido => _IdPedido;
  set IdPedido(int value) {
    _IdPedido = value;
  }

  String _metodoPagamento = '';
  String get metodoPagamento => _metodoPagamento;
  set metodoPagamento(String value) {
    _metodoPagamento = value;
  }

  bool _PesquisaON = false;
  bool get PesquisaON => _PesquisaON;
  set PesquisaON(bool value) {
    _PesquisaON = value;
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
