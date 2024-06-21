import '../database.dart';

class ShowsShowTable extends SupabaseTable<ShowsShowRow> {
  @override
  String get tableName => 'shows_show';

  @override
  ShowsShowRow createRow(Map<String, dynamic> data) => ShowsShowRow(data);
}

class ShowsShowRow extends SupabaseDataRow {
  ShowsShowRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShowsShowTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  double get preco => getField<double>('preco')!;
  set preco(double value) => setField<double>('preco', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  int get assentos => getField<int>('assentos')!;
  set assentos(int value) => setField<int>('assentos', value);

  String get elenco => getField<String>('elenco')!;
  set elenco(String value) => setField<String>('elenco', value);

  int get secoes => getField<int>('secoes')!;
  set secoes(int value) => setField<int>('secoes', value);

  DateTime get dataField => getField<DateTime>('data')!;
  set dataField(DateTime value) => setField<DateTime>('data', value);

  PostgresTime get horarios => getField<PostgresTime>('horarios')!;
  set horarios(PostgresTime value) => setField<PostgresTime>('horarios', value);

  String get imagem => getField<String>('imagem')!;
  set imagem(String value) => setField<String>('imagem', value);
}
