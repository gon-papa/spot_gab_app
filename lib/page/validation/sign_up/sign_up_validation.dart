import 'package:spot_gab_app/importer.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpValidation {
  MultiValidator emailValidator(context) {
    return MultiValidator([
      RequiredValidator(
          errorText: L10n.of(context)?.requiredFieldError ?? '入力してください'),
      MaxLengthValidator(100,
          errorText: L10n.of(context)?.max100LengthError ?? '100文字以内で入力してください'),
      EmailValidator(
          errorText:
              L10n.of(context)?.emailFormatError ?? 'メールアドレスの形式が正しくありません'),
    ]);
  }

  MultiValidator passwordValidator(BuildContext context) {
    return MultiValidator([
      RequiredValidator(errorText: '入力してください'),
      MinLengthValidator(8, errorText: '8文字以上で入力してください'),
      PatternValidator(r'(?=.*[A-Z])(?=.*\d)',
          errorText: '大文字1文字以上、数字1文字以上を含む必要があります'),
    ]);
  }

  MultiValidator birthDateValidator(BuildContext context) {
    return MultiValidator([
      RequiredValidator(errorText: '入力してください'),
    ]);
  }

  MultiValidator accountNameValidator(BuildContext context) {
    return MultiValidator([
      RequiredValidator(
          errorText: L10n.of(context)?.requiredFieldError ?? '入力してください'),
      MaxLengthValidator(30,
          errorText: L10n.of(context)?.max30LengthError ?? '30文字以下で入力してください'),
    ]);
  }

  MultiValidator accountIdValidator(BuildContext context) {
    return MultiValidator([
      RequiredValidator(
          errorText: L10n.of(context)?.requiredFieldError ?? '入力してください'),
      MaxLengthValidator(30,
          errorText: L10n.of(context)?.max30LengthError ?? '30文字以下で入力してください'),
      MinLengthValidator(4,
          errorText: L10n.of(context)?.min4LengthError ?? '4文字以上で入力してください'),
      PatternValidator(r'^[A-Za-z0-9_]+$',
          errorText: L10n.of(context)?.accountIdPatternError ??
              '半角英数字とアンダースコアのみ使用できます'),
    ]);
  }
}

final signUpValidation = Provider((ref) => SignUpValidation());
