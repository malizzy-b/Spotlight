import '../database.dart';

class SocialaccountSocialtokenTable
    extends SupabaseTable<SocialaccountSocialtokenRow> {
  @override
  String get tableName => 'socialaccount_socialtoken';

  @override
  SocialaccountSocialtokenRow createRow(Map<String, dynamic> data) =>
      SocialaccountSocialtokenRow(data);
}

class SocialaccountSocialtokenRow extends SupabaseDataRow {
  SocialaccountSocialtokenRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SocialaccountSocialtokenTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get token => getField<String>('token')!;
  set token(String value) => setField<String>('token', value);

  String get tokenSecret => getField<String>('token_secret')!;
  set tokenSecret(String value) => setField<String>('token_secret', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);

  int get accountId => getField<int>('account_id')!;
  set accountId(int value) => setField<int>('account_id', value);

  int? get appId => getField<int>('app_id');
  set appId(int? value) => setField<int>('app_id', value);
}
