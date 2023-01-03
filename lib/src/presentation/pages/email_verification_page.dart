import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/bloc/email/verification_email_form/verification_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class EmailVerificationPage extends StatelessWidget {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerCountdown = CountdownController(autoStart: true);
    const countdownTime = 59;

    var mockEmail = 'handsome.troyard@byneet.co.id';
    var mockDate = '13 Januari 2023';

    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(Const.margin),
        child: Column(
          children: [
            Expanded(flex: 8, child: Image.asset(CustomIcons.mail)),
            const SizedBox(height: Const.space25),
            Text(
              '${lang.a_verification_link_will_be_sent_to} $mockEmail, ${lang.immediately_activate_the_account_before} $mockDate',
              style: theme.textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Const.space25),
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
            const SizedBox(height: Const.space50),
            Text(
              lang.havent_received_the_verification_email_yet,
              style: theme.textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                // TODO(dickyrey): Navigate to Call Center
              },
              child: Text(
                lang.contact_us,
                style: theme.textTheme.headline4?.copyWith(
                  color: theme.primaryColor,
                ),
              ),
            ),
            const Expanded(flex: 2, child: SizedBox()),
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
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      title: Text(
        lang.verification,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
