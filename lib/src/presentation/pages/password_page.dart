import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/bloc/password/password_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';
import 'package:kumparan_clone/src/utilities/toast.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              const SizedBox(height: Const.space25),
              Text(
                lang.password_must_be_at_least_8_characters_long_and_must_be_a_combination_of_uppercase_letters_and_numbers,
                style: theme.textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Const.space50),
              TextFormFieldWidget(
                obscureText: _obscureText,
                hintText: lang.enter_new_password,
                textFieldType: TextFieldType.password,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                    (_obscureText == true)
                        ? FeatherIcons.eye
                        : FeatherIcons.eyeOff,
                  ),
                ),
                onChanged: (value) {
                  context
                      .read<PasswordFormBloc>()
                      .add(PasswordFormEvent.passwordOnChanged(value));
                },
              ),
              const SizedBox(height: Const.space15),
              TextFormFieldWidget(
                obscureText: _obscureText,
                hintText: lang.enter_the_same_password,
                textFieldType: TextFieldType.password,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                    (_obscureText == true)
                        ? FeatherIcons.eye
                        : FeatherIcons.eyeOff,
                  ),
                ),
                onChanged: (value) {
                  context
                      .read<PasswordFormBloc>()
                      .add(PasswordFormEvent.repeatPasswordOnChanged(value));
                },
              ),
              const SizedBox(height: Const.space25),
              ElevatedButtonWidget(
                onTap: () {
                  if (!formKey.currentState!.validate()) {
                  } else {
                    showToast(msg: 'Password added');
                  }
                },
                label: lang.save,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return AppBar(
      backgroundColor: theme.backgroundColor,
      elevation: .5,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      title: Text(
        lang.password,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
