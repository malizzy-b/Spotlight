import '../database.dart';

class AccountEmailconfirmationTable
    extends SupabaseTable<AccountEmailconfirmationRow> {
  @override
  String get tableName => 'account_emailconfirmation';

  @override
  AccountEmailconfirmationRow createRow(Map<String, dynamic> data) =>
      AccountEmailconfirmationRow(data);
}

class AccountEmailconfirmationRow extends SupabaseDataRow {
  AccountEmailconfirmationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AccountEmailconfirmationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get created => getField<DateTime>('created')!;
  set created(DateTime value) => setField<DateTime>('created', value);

  DateTime? get sent => getField<DateTime>('sent');
  set sent(DateTime? value) => setField<DateTime>('sent', value);

  String get key => getField<String>('key')!;
  set key(String value) => setField<String>('key', value);

  int get emailAddressId => getField<int>('email_address_id')!;
  set emailAddressId(int value) => setField<int>('email_address_id', value);
}
