import '../database.dart';

class AccountEmailaddressTable extends SupabaseTable<AccountEmailaddressRow> {
  @override
  String get tableName => 'account_emailaddress';

  @override
  AccountEmailaddressRow createRow(Map<String, dynamic> data) =>
      AccountEmailaddressRow(data);
}

class AccountEmailaddressRow extends SupabaseDataRow {
  AccountEmailaddressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AccountEmailaddressTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  bool get verified => getField<bool>('verified')!;
  set verified(bool value) => setField<bool>('verified', value);

  bool get primary => getField<bool>('primary')!;
  set primary(bool value) => setField<bool>('primary', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);
}
