import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/common/screens.dart';
import 'package:kumparan_clone/src/presentation/bloc/email/backup_email_form/backup_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/outlined_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';

class AddSecondEmailPage extends StatelessWidget {
  const AddSecondEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: BlocBuilder<BackupEmailFormBloc, BackupEmailFormState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const SizedBox(height: Const.space25),
                  Text(
                    lang.add_and_verify_email_to_be_able_to_login_with_email,
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: Const.space50),
                  Container(
                    width: Screens.width(context),
                    height: 45,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: Const.space8),
                    decoration: BoxDecoration(
                      color: theme.disabledColor.withOpacity(.2),
                      border: Border.all(color: theme.disabledColor),
                      borderRadius: BorderRadius.circular(Const.radius),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'vg.troyard@gmail.com',
                          style: theme.textTheme.bodyLarge,
                        ),
                        Icon(
                          FeatherIcons.check,
                          color: theme.primaryColor,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: Const.space15),
                  TextFormFieldWidget(
                    hintText: lang.enter_a_backup_email,
                    onChanged: (value) {
                      context
                          .read<BackupEmailFormBloc>()
                          .add(BackupEmailFormEvent.emailOnChanged(value));
                    },
                  ),
                  const SizedBox(height: Const.space25),
                  ElevatedButtonWidget(
                    label: lang.save,
                    onTap: () {
                      if (!formKey.currentState!.validate()) {
                      } else {
                        _showAlertDialog(context, email: state.email);
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<dynamic> _showAlertDialog(
    BuildContext context, {
    required String email,
  }) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return showDialog<dynamic>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Const.radius),
          ),
          content: Container(
            width: 300,
            height: 200,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      lang.change_email,
                      style: theme.textTheme.headlineLarge,
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(FeatherIcons.x),
                    ),
                  ],
                ),
                const SizedBox(height: Const.space15),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: lang
                            .are_you_sure_you_want_to_change_the_backup_email_to,
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: ' $email?',
                        style: theme.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            OutlinedButtonWidget(
              width: 100,
              height: 45,
              onTap: () {
                Navigator.pop(context);
              },
              label: lang.no,
            ),
            ElevatedButtonWidget(
              width: 100,
              height: 45,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  BACKUP_EMAIL_VERIFICATION,
                  arguments: email,
                );
              },
              label: lang.yes,
            ),
          ],
        );
      },
    );
  }

  AppBar _appBar(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return AppBar(
      backgroundColor: theme.colorScheme.background,
      elevation: .5,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      title: Text(
        lang.email,
        style: theme.textTheme.headlineSmall,
      ),
    );
  }
}
