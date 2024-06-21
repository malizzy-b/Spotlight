import '../database.dart';

class SocialaccountSocialappSitesTable
    extends SupabaseTable<SocialaccountSocialappSitesRow> {
  @override
  String get tableName => 'socialaccount_socialapp_sites';

  @override
  SocialaccountSocialappSitesRow createRow(Map<String, dynamic> data) =>
      SocialaccountSocialappSitesRow(data);
}

class SocialaccountSocialappSitesRow extends SupabaseDataRow {
  SocialaccountSocialappSitesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SocialaccountSocialappSitesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get socialappId => getField<int>('socialapp_id')!;
  set socialappId(int value) => setField<int>('socialapp_id', value);

  int get siteId => getField<int>('site_id')!;
  set siteId(int value) => setField<int>('site_id', value);
}
