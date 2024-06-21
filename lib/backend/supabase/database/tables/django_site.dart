import '../database.dart';

class DjangoSiteTable extends SupabaseTable<DjangoSiteRow> {
  @override
  String get tableName => 'django_site';

  @override
  DjangoSiteRow createRow(Map<String, dynamic> data) => DjangoSiteRow(data);
}

class DjangoSiteRow extends SupabaseDataRow {
  DjangoSiteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DjangoSiteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get domain => getField<String>('domain')!;
  set domain(String value) => setField<String>('domain', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
