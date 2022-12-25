import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/bloc/email/verification_email_form/verification_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class BackupEmailVerificationPage extends StatelessWidget {
  const BackupEmailVerificationPage({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final controllerCountdown = CountdownController(autoStart: true);
    const countdownTime = 59;

    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(MARGIN),
        child: Column(
          children: [
            Expanded(flex: 6, child: Image.asset(CustomIcons.email_send)),
            const SizedBox(height: SPACE25),
            Text(
              lang.email_verification,
              style: theme.textTheme.headline3,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: SPACE12),
            Text(
              '${lang.please_click_the_verification_link_that_was_sent_to} $email',
              style: theme.textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: SPACE25),
            BlocBuilder<VerificationEmailFormBloc, VerificationEmailFormState>(
              builder: (context, state) {
                return ElevatedButtonWidget(
                  onTap: () {
                    if (state.isTimeoutDone == true) {
                      context.read<VerificationEmailFormBloc>().add(
                            VerificationEmailFormEvent.startTimeOut(
                              controllerCountdown,
                            ),
                          );
                    } else {}
                  },
                  color: (state.isTimeoutDone == false)
                      ? theme.primaryColor.withOpacity(.5)
                      : theme.primaryColor,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        (state.isTimeoutDone)
                            ? lang.resend_the_verification_link
                            : '${lang.resend_in} ',
                        style: theme.textTheme.button,
                      ),
                      Countdown(
                        seconds: countdownTime,
                        controller: controllerCountdown,
                        build: (_, timer) {
                          return Text(
                            (state.isTimeoutDone == true)
                                ? ''
                                : '0:${timer.toInt().toString()}',
                            style: theme.textTheme.button,
                          );
                        },
                        onFinished: () => context
                            .read<VerificationEmailFormBloc>()
                            .add(const VerificationEmailFormEvent.onFinished()),
                      )
                    ],
                  ),
                );
              },
            ),
            const Expanded(flex: 4, child: SizedBox()),
          ],
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
        onPressed: () => Navigator.pushNamedAndRemoveUntil(
          context,
          MENU,
          (route) => false,
        ),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      title: Text(
        lang.add_email,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
