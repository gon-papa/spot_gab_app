import 'package:now_go_app/importer.dart';

typedef _Providers = RegisterProviders;

class RegisterAccount extends ConsumerWidget {
  const RegisterAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RegisterScaffold(
      title: '${L10n.of(context)?.registerAccountTitle ?? ''}',
      formKey: ref.watch(_Providers.idAccountGlobalKeyProvider),
      child: _Body(),
      onPressed: () async {
        await ref.watch(_Providers.idAccountSubmitProvider)(
          context,
          ref.read(_Providers.idAccountProvider).text,
        );
      },
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        VerticalMargin(height: 10),
        RegisterTitle(
            title: '2/2 ${L10n.of(context)?.registerAccountSubtitle ?? ''}'),
        VerticalMargin(height: 15),
        _AccountNameInput(),
        VerticalMargin(height: 15),
        _iDAccountInput(),
        VerticalMargin(height: 45),
        SupportSection(),
      ],
    );
  }
}

class _AccountNameInput extends ConsumerWidget {
  const _AccountNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: ref.watch(_Providers.accountNameProvider),
      decoration: InputDecoration(
        labelText: L10n.of(context)?.accountName ?? '',
        hintText: L10n.of(context)?.accountNamePlaceholder ?? '',
      ),
      keyboardType: TextInputType.name,
      validator: ref.watch(signUpValidation).accountNameValidator.call(context),
    );
  }
}

class _iDAccountInput extends ConsumerWidget {
  const _iDAccountInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: ref.watch(_Providers.idAccountProvider),
      decoration: InputDecoration(
        labelText: L10n.of(context)?.idAccount ?? '',
        prefixText: '@',
      ),
      keyboardType: TextInputType.name,
      validator: ref.watch(signUpValidation).accountIdValidator.call(context),
    );
  }
}
