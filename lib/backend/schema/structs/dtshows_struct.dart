// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtshowsStruct extends BaseStruct {
  DtshowsStruct({
    int? id,
    String? nome,
    String? descricao,
    String? tipo,
    double? preco,
    String? imagem,
    int? quantidade,
    double? total,
    String? horarios,
    String? data,
  })  : _id = id,
        _nome = nome,
        _descricao = descricao,
        _tipo = tipo,
        _preco = preco,
        _imagem = imagem,
        _quantidade = quantidade,
        _total = total,
        _horarios = horarios,
        _data = data;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;

  void incrementPreco(double amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  set imagem(String? val) => _imagem = val;

  bool hasImagem() => _imagem != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "horarios" field.
  String? _horarios;
  String get horarios => _horarios ?? '';
  set horarios(String? val) => _horarios = val;

  bool hasHorarios() => _horarios != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

  static DtshowsStruct fromMap(Map<String, dynamic> data) => DtshowsStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        descricao: data['descricao'] as String?,
        tipo: data['tipo'] as String?,
        preco: castToType<double>(data['preco']),
        imagem: data['imagem'] as String?,
        quantidade: castToType<int>(data['quantidade']),
        total: castToType<double>(data['total']),
        horarios: data['horarios'] as String?,
        data: data['data'] as String?,
      );

  static DtshowsStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtshowsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'descricao': _descricao,
        'tipo': _tipo,
        'preco': _preco,
        'imagem': _imagem,
        'quantidade': _quantidade,
        'total': _total,
        'horarios': _horarios,
        'data': _data,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
        'horarios': serializeParam(
          _horarios,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtshowsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtshowsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
        imagem: deserializeParam(
          data['imagem'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
        horarios: deserializeParam(
          data['horarios'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtshowsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtshowsStruct &&
        id == other.id &&
        nome == other.nome &&
        descricao == other.descricao &&
        tipo == other.tipo &&
        preco == other.preco &&
        imagem == other.imagem &&
        quantidade == other.quantidade &&
        total == other.total &&
        horarios == other.horarios &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        descricao,
        tipo,
        preco,
        imagem,
        quantidade,
        total,
        horarios,
        data
      ]);
}

DtshowsStruct createDtshowsStruct({
  int? id,
  String? nome,
  String? descricao,
  String? tipo,
  double? preco,
  String? imagem,
  int? quantidade,
  double? total,
  String? horarios,
  String? data,
}) =>
    DtshowsStruct(
      id: id,
      nome: nome,
      descricao: descricao,
      tipo: tipo,
      preco: preco,
      imagem: imagem,
      quantidade: quantidade,
      total: total,
      horarios: horarios,
      data: data,
    );
