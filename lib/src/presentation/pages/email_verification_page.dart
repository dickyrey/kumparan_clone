import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/sign_up_with_email_form/sign_up_with_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/verification_status_watcher/verification_status_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/email/verification_email_form/verification_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({super.key});

  @override
  State<EmailVerificationPage> createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage>
    with WidgetsBindingObserver {
  final StreamController<bool> _streamController = StreamController<bool>();
  String email = '';

  @override
  void initState() {
    super.initState();
    email = context.read<SignUpWithEmailFormBloc>().state.email;
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      context
          .read<VerificationStatusWatcherBloc>()
          .add(const VerificationStatusWatcherEvent.fetchStatus());
    }
  }

  @override
  Widget build(BuildContext context) {
    final controllerCountdown = CountdownController(autoStart: true);
    const countdownTime = 59;
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return StreamBuilder<bool>(
      stream: _streamController.stream,
      builder: (context, snapshot) {
        return BlocListener<VerificationStatusWatcherBloc,
            VerificationStatusWatcherState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              loaded: (state) {
                if (state.status.isEmailVerified == true &&
                    state.status.isSetPassword == false) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    PASSWORD,
                    (route) => false,
                  );
                }
              },
            );
          },
          child: Scaffold(
            appBar: _appBar(context),
            body: Padding(
              padding: const EdgeInsets.all(Const.margin),
              child: Column(
                children: [
                  Expanded(flex: 8, child: Image.asset(CustomIcons.mail)),
                  const SizedBox(height: Const.space25),
                  Text(
                    '${lang.a_verification_link_will_be_sent_to} $email, ${lang.immediately_activate_the_account_before} ',
                    style: theme.textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: Const.space25),
                  BlocBuilder<VerificationEmailFormBloc,
                      VerificationEmailFormState>(
                    builder: (context, state) {
                      return ElevatedButtonWidget(
                        onTap: () {
                          if (state.isTimeoutDone == true) {
                            context.read<VerificationEmailFormBloc>().add(
                                  VerificationEmailFormEvent.resendEmail(
                                    email,
                                  ),
                                );
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
                              style: theme.textTheme.labelMedium,
                            ),
                            Countdown(
                              seconds: countdownTime,
                              controller: controllerCountdown,
                              build: (_, timer) {
                                return Text(
                                  (state.isTimeoutDone == true)
                                      ? ''
                                      : '0:${timer.toInt()}',
                                  style: theme.textTheme.labelMedium,
                                );
                              },
                              onFinished: () =>
                                  context.read<VerificationEmailFormBloc>().add(
                                        const VerificationEmailFormEvent
                                            .onFinished(),
                                      ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: Const.space50),
                  Text(
                    lang.havent_received_the_verification_email_yet,
                    style: theme.textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO(dickyrey): Navigate to Call Center
                    },
                    child: Text(
                      lang.contact_us,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                  const Expanded(flex: 2, child: SizedBox()),
                ],
              ),
            ),
          ),
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
        lang.verification,
        style: theme.textTheme.headlineSmall,
      ),
    );
  }
}
