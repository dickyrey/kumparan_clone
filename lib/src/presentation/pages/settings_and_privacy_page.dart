import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/widgets/list_tile_widget.dart';

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
            const SizedBox(height: SPACE12),
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
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.phone_number,
              subtitle: 'belum ditambahkan',
              icon: FeatherIcons.smartphone,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.password,
              subtitle: 'belum ditambahkan',
              icon: FeatherIcons.lock,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.notification,
              icon: FeatherIcons.bell,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.dark_mode,
              icon: FeatherIcons.moon,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.delete_account,
              subtitle: 'Akun dan data kamu akan dihapus secara permanen.',
              icon: FeatherIcons.trash2,
              onTap: () {},
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
