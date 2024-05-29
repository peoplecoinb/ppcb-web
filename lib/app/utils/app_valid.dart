
import '../../generated/l10n.dart';

class AppValid {
  AppValid._();

  static String? validateFullName(String? value) {
    if (value?.isEmpty ?? true) {
      return S.current.valid_enter_full_name;
    }
    return null;
  }

  static String? validateRequired(String? value, {String? errorText}) {
    if (value?.isEmpty ?? true) {
      return errorText ?? S.current.field_required;
    }
    return null;
  }

  static String? validateNumericString(String? value, {String? errorText}) {
    if (!RegExp(r'^[0-9]+$').hasMatch(value!)) {
      return errorText ?? S.current.valid_enter_number;
    }
    return null;
  }

  static String? validationUrl(String? text){
    final RegExp urlRegex = RegExp(r'^(https?://)([^\s/$.?#].\S*)$');
    if (!urlRegex.hasMatch(text!)) {
      return S.current.valid_enter_url;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if(value?.isNotEmpty ?? false){
      final RegExp regex = RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
      if (!regex.hasMatch(value!))
        return S.current.please_provide_valid_email;
      else
        return null;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (!RegExp(r'^[0-9]+$').hasMatch(value ?? '')) {
      return S.current.password_invalid;
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, {String? confirmText}) {
    if(value! != confirmText){
      return S.current.confirm_password_invalid;
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    final RegExp regExp = RegExp(r'^(0[0-9]{9}|[0-9]{9})$');
    if (value?.isEmpty ?? true) {
      return S.current.valid_phone;
    } else if (!regExp.hasMatch(value!)) {
      return S.current.valid_phone;
    } else {
      return null;
    }
  }
}
