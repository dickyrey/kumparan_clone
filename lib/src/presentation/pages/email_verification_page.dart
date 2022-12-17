import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';

class EmailVerificationPage extends StatelessWidget {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mockEmail = 'handsome.troyard@byneet.co.id';
    var mockDate = '13 Januari 2023';

    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(MARGIN),
        child: Column(
          children: [
            Expanded(flex: 8, child: Image.asset(CustomIcons.mail)),
            const SizedBox(height: SPACE25),
            Text(
              '${lang.a_verification_link_will_be_sent_to} $mockEmail, ${lang.immediately_activate_the_account_before} $mockDate',
              style: theme.textTheme.subtitle1,
            ),
            const SizedBox(height: SPACE25),
            ElevatedButtonWidget(
              onTap: () {
                //TODO(dickyrey): Resend Email Verification Link
              },
              // TODO(dickyrey): create a expired timer
              label: '${lang.resend_in} 04:00',
            ),
            const SizedBox(height: SPACE50),
            Text(
              lang.havent_received_the_verification_email_yet,
              style: theme.textTheme.subtitle1,
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
