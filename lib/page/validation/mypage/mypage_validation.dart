import 'package:now_go_app/importer.dart';
import 'package:form_field_validator/form_field_validator.dart';

class MyPageValidation {
  MultiValidator accountNameValidator(BuildContext context) {
    return MultiValidator(
      [
        RequiredValidator(
          errorText: L10n.of(context)?.requiredFieldError ?? '入力してください',
        ),
        MaxLengthValidator(
          30,
          errorText: L10n.of(context)?.max30LengthError ?? '30文字以下で入力してください',
        ),
      ],
    );
  }

  MultiValidator linkValidator(BuildContext context) {
    return MultiValidator(
      [
        MaxLengthValidator(
          1024,
          errorText: '1024文字以上で入力してください',
        ),
        PatternValidator(
          r'(http|https)://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?',
          errorText: 'URL形式で入力してください',
        ),
      ],
    );
  }

  MultiValidator profileValidator(BuildContext context) {
    return MultiValidator(
      [
        RequiredValidator(
          errorText: L10n.of(context)?.requiredFieldError ?? '入力してください',
        ),
        MaxLengthValidator(
          130,
          errorText: '130文字以下で入力してください',
        ),
      ],
    );
  }
}

final myPageValidation = Provider((ref) => MyPageValidation());
