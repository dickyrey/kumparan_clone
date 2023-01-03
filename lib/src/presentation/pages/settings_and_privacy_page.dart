import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/widgets/list_tile_widget.dart';
import 'package:kumparan_clone/src/utilities/toast.dart';

class SettingsAndPrivacyPage extends StatelessWidget {
  const SettingsAndPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: Const.space12),
            ListTileWidget(
              title: lang.personal_data,
              icon: FeatherIcons.user,
              onTap: () {
                Navigator.pushNamed(context, CHANGE_PROFILE);
              },
            ),
            ListTileWidget(
              title: lang.email,
              subtitle: 'vg.troyard@gmail.com',
              icon: FeatherIcons.mail,
              onTap: () {
                Navigator.pushNamed(context, ADD_SECOND_EMAIL);
              },
            ),
            ListTileWidget(
              title: lang.phone_number,
              subtitle: lang.not_yet_added,
              icon: FeatherIcons.smartphone,
              onTap: () {
                Navigator.pushNamed(context, ADD_PHONE_NUMBER);
              },
            ),
            ListTileWidget(
              title: lang.password,
              subtitle: lang.not_yet_added,
              icon: FeatherIcons.lock,
              onTap: () {
                Navigator.pushNamed(context, PASSWORD);
              },
            ),
            ListTileWidget(
              title: lang.notification,
              icon: FeatherIcons.bell,
              onTap: () {
                Navigator.pushNamed(context, INTEREST_SETTING);
              },
            ),
            ListTileWidget(
              title: lang.dark_mode,
              subtitle: 'Coming soon',
              icon: FeatherIcons.moon,
              onTap: () {
                showToast(msg: lang.feature_not_available_yet);
              },
            ),
            ListTileWidget(
              title: lang.delete_account,
              subtitle: lang.your_account_and_data_will_be_permanently_deleted,
              icon: FeatherIcons.trash2,
              onTap: () {
                Navigator.pushNamed(context, DELETE_ACCOUNT);
              },
            ),
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
        lang.settings_and_privacy,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
