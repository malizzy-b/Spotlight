import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _totalGeral = prefs.getDouble('ff_totalGeral') ?? _totalGeral;
    });
    _safeInit(() {
      _itensSacola = prefs
              .getStringList('ff_itensSacola')
              ?.map((x) {
                try {
                  return DtshowsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _itensSacola;
    });
    _safeInit(() {
      _assentos = prefs.getInt('ff_assentos') ?? _assentos;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _totalGeral = 0.0;
  double get totalGeral => _totalGeral;
  set totalGeral(double value) {
    _totalGeral = value;
    prefs.setDouble('ff_totalGeral', value);
  }

  List<DtshowsStruct> _itensSacola = [];
  List<DtshowsStruct> get itensSacola => _itensSacola;
  set itensSacola(List<DtshowsStruct> value) {
    _itensSacola = value;
    prefs.setStringList(
        'ff_itensSacola', value.map((x) => x.serialize()).toList());
  }

  void addToItensSacola(DtshowsStruct value) {
    itensSacola.add(value);
    prefs.setStringList(
        'ff_itensSacola', _itensSacola.map((x) => x.serialize()).toList());
  }

  void removeFromItensSacola(DtshowsStruct value) {
    itensSacola.remove(value);
    prefs.setStringList(
        'ff_itensSacola', _itensSacola.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromItensSacola(int index) {
    itensSacola.removeAt(index);
    prefs.setStringList(
        'ff_itensSacola', _itensSacola.map((x) => x.serialize()).toList());
  }

  void updateItensSacolaAtIndex(
    int index,
    DtshowsStruct Function(DtshowsStruct) updateFn,
  ) {
    itensSacola[index] = updateFn(_itensSacola[index]);
    prefs.setStringList(
        'ff_itensSacola', _itensSacola.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInItensSacola(int index, DtshowsStruct value) {
    itensSacola.insert(index, value);
    prefs.setStringList(
        'ff_itensSacola', _itensSacola.map((x) => x.serialize()).toList());
  }

  int _assentos = 0;
  int get assentos => _assentos;
  set assentos(int value) {
    _assentos = value;
    prefs.setInt('ff_assentos', value);
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
