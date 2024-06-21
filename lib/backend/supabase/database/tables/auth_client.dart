import '../database.dart';

class AuthClientTable extends SupabaseTable<AuthClientRow> {
  @override
  String get tableName => 'auth_client';

  @override
  AuthClientRow createRow(Map<String, dynamic> data) => AuthClientRow(data);
}

class AuthClientRow extends SupabaseDataRow {
  AuthClientRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AuthClientTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);

  DateTime? get birthdate => getField<DateTime>('birthdate');
  set birthdate(DateTime? value) => setField<DateTime>('birthdate', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get profilePic => getField<String>('profile_pic');
  set profilePic(String? value) => setField<String>('profile_pic', value);
}
