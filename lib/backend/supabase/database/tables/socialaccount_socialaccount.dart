import '../database.dart';

class SocialaccountSocialaccountTable
    extends SupabaseTable<SocialaccountSocialaccountRow> {
  @override
  String get tableName => 'socialaccount_socialaccount';

  @override
  SocialaccountSocialaccountRow createRow(Map<String, dynamic> data) =>
      SocialaccountSocialaccountRow(data);
}

class SocialaccountSocialaccountRow extends SupabaseDataRow {
  SocialaccountSocialaccountRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SocialaccountSocialaccountTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get provider => getField<String>('provider')!;
  set provider(String value) => setField<String>('provider', value);

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  DateTime get lastLogin => getField<DateTime>('last_login')!;
  set lastLogin(DateTime value) => setField<DateTime>('last_login', value);

  DateTime get dateJoined => getField<DateTime>('date_joined')!;
  set dateJoined(DateTime value) => setField<DateTime>('date_joined', value);

  dynamic get extraData => getField<dynamic>('extra_data')!;
  set extraData(dynamic value) => setField<dynamic>('extra_data', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);
}
