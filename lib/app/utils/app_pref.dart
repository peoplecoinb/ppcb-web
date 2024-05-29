// ignore_for_file: always_specify_types, strict_raw_type

import 'package:hive/hive.dart';

import '../blocs/language/language_select_state.dart';

class AppPrefs {
  AppPrefs._();

  static final Box _box = Hive.box('AppPref');

  static Future<void> initListener() async {
    await Hive.openBox('AppPref');
  }

  static set accessToken(String? data) => _box.put('accessToken', data);

  static String? get accessToken => _box.get('accessToken') as String?;

  // static set userInfo(UserModel? data) => _box.write('userInfo', data?.toJson());
  //
  // static UserModel? get userInfo => _box.read('userInfo') != null ? UserModel.fromJson(_box.read('userInfo')) : null;

  static set appLanguage(LanguageSelectState? data) => _box.put('appLanguage', data?.toJson());

  static LanguageSelectState? get appLanguage => _box.get('appLanguage') != null ? LanguageSelectState.fromJson(_box.get('appLanguage')) : null;

  static set themeMode(String? data) => _box.put('themeMode', data);

  static String? get themeMode => _box.get('themeMode') as String?;

}
