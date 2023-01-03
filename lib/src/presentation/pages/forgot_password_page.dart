import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/presentation/bloc/forgot_password/forgot_password_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: BlocListener<ForgotPasswordFormBloc, ForgotPasswordFormState>(
        listener: (context, state) {
          if (state.result == RequestState.loaded) {
            alertDialog(context, text: lang.check_your_email_to_change_your_password);
          }
        },
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              const SizedBox(height: Const.space25),
              Text(
                lang.enter_your_email_to_change_the_password,
                style: theme.textTheme.bodyText2,
              ),
              const SizedBox(height: Const.space25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Const.margin),
                child: TextFormFieldWidget(
                  hintText: AppLocalizations.of(context)!.email,
                  textFieldType: TextFieldType.email,
                  onChanged: (v) {
                    context
                        .read<ForgotPasswordFormBloc>()
                        .add(ForgotPasswordFormEvent.emailOnChanged(v));
                  },
                ),
              ),
              const SizedBox(height: Const.space25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Const.margin),
                child: BlocBuilder<ForgotPasswordFormBloc,
                    ForgotPasswordFormState>(
                  builder: (context, state) {
                    return ElevatedButtonWidget(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          context
                              .read<ForgotPasswordFormBloc>()
                              .add(const ForgotPasswordFormEvent.sendPressed());
                        }
                      },
                      label: lang.send,
                      isLoading: state.isSubmitting == true ? true : false,
                    );
                  },
                ),
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
        lang.login,
        style: theme.textTheme.headline3,
      ),
    );
  }

  Future<dynamic> alertDialog(BuildContext context, {required String text}) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return showDialog<dynamic>(
      context: context,
      barrierDismissible: false,
      useSafeArea: true,
      builder: (context) {
        return AlertDialog(
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButtonWidget(
                width: 80,
                height: 35,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  context
                      .read<ForgotPasswordFormBloc>()
                      .add(const ForgotPasswordFormEvent.initial());
                },
                label: lang.close,
              ),
            ),
          ],
          content: Text(
            text,
            style: theme.textTheme.bodyText2,
          ),
        );
      },
    );
  }
}
