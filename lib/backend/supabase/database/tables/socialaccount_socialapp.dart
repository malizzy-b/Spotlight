import '../database.dart';

class SocialaccountSocialappTable
    extends SupabaseTable<SocialaccountSocialappRow> {
  @override
  String get tableName => 'socialaccount_socialapp';

  @override
  SocialaccountSocialappRow createRow(Map<String, dynamic> data) =>
      SocialaccountSocialappRow(data);
}

class SocialaccountSocialappRow extends SupabaseDataRow {
  SocialaccountSocialappRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SocialaccountSocialappTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get provider => getField<String>('provider')!;
  set provider(String value) => setField<String>('provider', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get clientId => getField<String>('client_id')!;
  set clientId(String value) => setField<String>('client_id', value);

  String get secret => getField<String>('secret')!;
  set secret(String value) => setField<String>('secret', value);

  String get key => getField<String>('key')!;
  set key(String value) => setField<String>('key', value);

  String get providerId => getField<String>('provider_id')!;
  set providerId(String value) => setField<String>('provider_id', value);

  dynamic get settings => getField<dynamic>('settings')!;
  set settings(dynamic value) => setField<dynamic>('settings', value);
}
