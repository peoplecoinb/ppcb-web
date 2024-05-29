import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../constants/app_values.dart';
import 'language_select_state.dart';
import '../../utils/app_pref.dart';

class LanguageCubit extends Cubit<LanguageSelectState> {
  LanguageCubit(): super(AppPrefs.appLanguage ?? appLanguages.first) {
    S.load(state.locale);
  }

  void changeLanguage(LanguageSelectState value){
    if(state != value){
      emit(value);
      AppPrefs.appLanguage = value;
    }
  }

}
