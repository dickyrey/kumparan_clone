import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/bloc/register/register_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: BlocListener<RegisterFormBloc, RegisterFormState>(
        listener: (context, state) {
          if (state.isShowErrorMessages == true) {
            alertDialog(
              context,
              text: lang.yikes_it_looks_like_your_email_has_been_registered,
            );
          } else if (state.result == RequestState.loaded) {
            alertDialog(
              context,
              text: lang
                  .gratz_you_are_already_registered_check_your_email_for_verification,
            );
          } else if (state.result == RequestState.error) {
            alertDialog(
              context,
              text: lang
                  .i_am_sorry_but_there_was_a_problem_with_the_system_please_try_again_later,
            );
          }
        },
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: MARGIN,
                    vertical: SPACE15,
                  ),
                  child: Text(
                    lang.register_first_so_you_can_comment_create_content_subscribe_to_kumparanplus_and_set_notifications_for_your_favorite_content_come_on,
                    style: theme.textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: SPACE25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                  child: TextFormFieldWidget(
                    hintText: AppLocalizations.of(context)!.email,
                    textFieldType: TextFieldType.email,
                    onChanged: (v) {
                      context
                          .read<RegisterFormBloc>()
                          .add(RegisterFormEvent.emailOnChanged(v));
                    },
                  ),
                ),
                const SizedBox(height: SPACE25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                  child: BlocBuilder<RegisterFormBloc, RegisterFormState>(
                    builder: (context, state) {
                      return ElevatedButtonWidget(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            context
                                .read<RegisterFormBloc>()
                                .add(const RegisterFormEvent.signInPressed());
                          }
                        },
                        label: lang.register,
                        isLoading: state.isSubmitting == true ? true : false,
                      );
                    },
                  ),
                ),
                const SizedBox(height: SPACE25),
                Text(
                  lang.or_use,
                  style: theme.textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: SPACE25),
                registerOptionButton(
                  context,
                  label: lang.google,
                  customIcon: CustomIcons.google,
                  onTap: () {
                    // TODO(dickyrey): Google Sign In
                  },
                ),
                const SizedBox(height: SPACE15),
                registerOptionButton(
                  context,
                  label: lang.facebook,
                  customIcon: CustomIcons.facebook,
                  onTap: () {
                    // TODO(dickyrey): Facebook Sign In (optional)
                  },
                ),
                const SizedBox(height: SPACE15),
                registerOptionButton(
                  context,
                  label: lang.phone_number,
                  icon: FeatherIcons.smartphone,
                  onTap: () {
                    // TODO(dickyrey): Sign in with Phone Number
                  },
                ),
                const SizedBox(height: SPACE15),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, LOGIN),
                  style: TextButton.styleFrom(
                    foregroundColor: theme.disabledColor,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${lang.already_have_an_account} ',
                          style: theme.textTheme.subtitle1,
                        ),
                        TextSpan(
                          text: lang.login,
                          style: theme.textTheme.subtitle1?.copyWith(
                            color: theme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(MARGIN),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: theme.textTheme.bodyText2?.copyWith(
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          text:
                              '${lang.by_registering_logging_into_kumparan_you_agree_to_that} ',
                        ),
                        TextSpan(
                          text: '${lang.terms_and_privacy_policy} ',
                          style: theme.textTheme.subtitle1?.copyWith(
                            color: theme.primaryColor,
                            fontSize: 12,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // TODO(dickyrey): Navigate to Privacy Policy Page
                            },
                        ),
                        TextSpan(
                          text: lang.applies_to_you,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: SPACE25),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButtonWidget registerOptionButton(
    BuildContext context, {
    required VoidCallback onTap,
    IconData? icon,
    String? customIcon,
    required String label,
  }) {
    final theme = Theme.of(context);

    return ElevatedButtonWidget(
      onTap: onTap,
      color: theme.backgroundColor,
      margin: const EdgeInsets.symmetric(horizontal: MARGIN),
      elevation: 1,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          (icon != null)
              ? Icon(
                  icon,
                  size: 25,
                  color: theme.primaryColor,
                )
              : SvgPicture.asset(
                  customIcon!,
                  width: 20,
                ),
          const SizedBox(width: SPACE15),
          Text(
            label,
            style: theme.textTheme.headline3,
          )
        ],
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
                  Navigator.pushNamed(context, EMAIL_VERIFICATION);
                  context
                      .read<RegisterFormBloc>()
                      .add(const RegisterFormEvent.initial());
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
        lang.register,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
