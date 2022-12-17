import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/bloc/login/login_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: BlocListener<LoginFormBloc, LoginFormState>(
        listener: (context, state) {
          
        },
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: MARGIN,
                    vertical: SPACE15,
                  ),
                  child: Text(  
                    lang.login_first_so_you_can_comment_create_content_subscribe_to_kumparanplus_and_set_notifications_for_your_favorite_content_come_on,
                    style: theme.textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: SPACE25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                  child: TextFormFieldWidget(
                    hintText: lang.email,
                    textFieldType: TextFieldType.email,
                    onChanged: (v) {
                      context
                          .read<LoginFormBloc>()
                          .add(LoginFormEvent.emailOnChanged(v));
                    },
                  ),
                ),
                const SizedBox(height: SPACE12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                  child: TextFormFieldWidget(
                    hintText: lang.password,
                    textFieldType: TextFieldType.password,
                    onChanged: (v) {
                      context
                          .read<LoginFormBloc>()
                          .add(LoginFormEvent.passwordOnChanged(v));
                    },
                  ),
                ),
                const SizedBox(height: SPACE25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                  child: BlocBuilder<LoginFormBloc, LoginFormState>(
                    builder: (context, state) {
                      return ElevatedButtonWidget(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            context
                                .read<LoginFormBloc>()
                                .add(const LoginFormEvent.signInPressed());
                          }
                        },
                        label: lang.login,
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
                  onPressed: () {
                    // TODO(dickyrey): Navigate to Sign In Page
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: theme.disabledColor,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${lang.dont_have_an_account_yet} ',
                          style: theme.textTheme.subtitle1,
                        ),
                        TextSpan(
                          text: lang.register_now,
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
                          recognizer: TapGestureRecognizer()..onTap = () {
                            //TODO(dickyrey): Navigate to Privacy Policy Page
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
      onTap: () {},
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
}
