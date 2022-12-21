import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: SPACE15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: MARGIN),
              height: 90,
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.red,
                    backgroundImage: CachedNetworkImageProvider(
                      'https://i.pinimg.com/564x/2b/54/5a/2b545ae586764da77f5717d8406d0910.jpg',
                    ),
                  ),
                  const SizedBox(width: SPACE15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Troyard esport',
                          style: theme.textTheme.headline3,
                          maxLines: 1,
                        ),
                        Text(
                          'vg.troyard@gmail.com',
                          style: theme.textTheme.subtitle1,
                          maxLines: 1,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            lang.change_profile,
                            style: theme.textTheme.subtitle1?.copyWith(
                              color: theme.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: SPACE25),
            ElevatedButtonWidget(
              onTap: () {},
              margin: const EdgeInsets.symmetric(horizontal: MARGIN),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    FeatherIcons.edit3,
                    color: Colors.white,
                  ),
                  const SizedBox(width: SPACE12),
                  Text(
                    lang.write_an_article,
                    style: theme.textTheme.button,
                  )
                ],
              ),
            ),
            const SizedBox(height: SPACE15),
            _MenuListTile(
              icon: FeatherIcons.fileText,
              label: lang.my_content,
              onTap: () {},
            ),
            const SizedBox(height: SPACE25),
            _MenuListTile(
              icon: FeatherIcons.user,
              label: lang.profile_page,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.settings,
              label: lang.settings_and_privacy,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.clock,
              label: lang.read_history,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.slack,
              label: lang.subscription,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.repeat,
              label: lang.subscription_history,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.creditCard,
              label: lang.manage_subscription,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.moon,
              label: lang.dark_mode,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.mail,
              label: lang.cooperation_information,
              onTap: () {},
            ),
            const Divider(),
            _MenuListTile(
              icon: FeatherIcons.trendingUp,
              label: lang.trending,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.mapPin,
              label: lang.regional_news,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.camera,
              label: lang.photo_gallery,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.video,
              label: lang.video,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.edit3,
              label: lang.opinions_and_stories,
              onTap: () {},
            ),
            _MenuListTile(
              icon: FeatherIcons.barChart2,
              label: lang.author_ranking,
              onTap: () {},
            ),
            const Divider(),
            _MenuListTile(
              label: lang.news,
              onTap: () {},
            ),
            _MenuListTile(
              label: 'Entertaiment',
              onTap: () {},
            ),
            _MenuListTile(
              label: 'Mom',
              onTap: () {},
            ),
            _MenuListTile(
              label: lang.food_and_travel,
              onTap: () {},
            ),
            _MenuListTile(
              label: lang.tech_and_science,
              onTap: () {},
            ),
            _MenuListTile(
              label: lang.automotive,
              onTap: () {},
            ),
            _MenuListTile(
              label: lang.woman,
              onTap: () {},
            ),
            _MenuListTile(
              label: lang.sports,
              onTap: () {},
            ),
            _MenuListTile(
              label: lang.business,
              onTap: () {},
            ),
            _MenuListTile(
              label: lang.buzz,
              onTap: () {},
            ),
            const Divider(),
            _MenuListTile(
              label: lang.how_to_write_in_kumparan,
              onTap: () {},
            ),
            ExpansionTile(
              title: Text(
                lang.about_kumparan,
                style: theme.textTheme.bodyText2,
              ),
              children: [
                _MenuListTile(
                  label: lang.life_at_kumparan,
                  fontSize: 12,
                  onTap: () {},
                ),
                _MenuListTile(
                  label: lang.help,
                  fontSize: 12,
                  onTap: () {},
                ),
                _MenuListTile(
                  label: lang.terms_and_privacy_policy,
                  fontSize: 12,
                  onTap: () {},
                ),
                _MenuListTile(
                  label: lang.kumparan_community_guide,
                  fontSize: 12,
                  onTap: () {},
                ),
                _MenuListTile(
                  label: lang.cyber_media_guide,
                  fontSize: 12,
                  onTap: () {},
                ),
                _MenuListTile(
                  label: lang.advertisement,
                  fontSize: 12,
                  onTap: () {},
                ),
                _MenuListTile(
                  label: lang.career,
                  fontSize: 12,
                  onTap: () {},
                ),
              ],
            ),
            _MenuListTile(
              icon: FeatherIcons.logOut,
              label: lang.exit,
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
      title: Text(
        lang.menu,
        style: theme.textTheme.headline3,
      ),
    );
  }
}

class _MenuListTile extends StatelessWidget {
  const _MenuListTile({
    required this.label,
    required this.onTap,
    this.icon,
    this.fontSize,
  });

  final String label;
  final VoidCallback onTap;
  final IconData? icon;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: MARGIN,
          vertical: SPACE12,
        ),
        child: Row(
          children: [
            (icon != null)
                ? Icon(icon, color: ColorLight.fontTitle)
                : const SizedBox(),
            (icon != null) ? const SizedBox(width: SPACE15) : const SizedBox(),
            Text(
              label,
              style: theme.textTheme.bodyText2?.copyWith(
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
