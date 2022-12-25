import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/list_tile_widget.dart';

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
                    backgroundColor: Colors.black26,
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
                          onTap: () {
                            Navigator.pushNamed(context, CHANGE_PROFILE);
                          },
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
            ListTileWidget(
              icon: FeatherIcons.fileText,
              title: lang.my_content,
              onTap: () {
                Navigator.pushNamed(context, MY_CONTENT);
              },
            ),
            const SizedBox(height: SPACE25),
            ListTileWidget(
              icon: FeatherIcons.user,
              title: lang.profile_page,
              onTap: () {
                Navigator.pushNamed(context, PROFILE);
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.settings,
              title: lang.settings_and_privacy,
              onTap: () {
                Navigator.pushNamed(context, SETTINGS_AND_PRIVACY);
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.clock,
              title: lang.read_history,
              onTap: () {},
            ),
            ListTileWidget(
              icon: FeatherIcons.slack,
              title: lang.subscription,
              onTap: () {},
            ),
            ListTileWidget(
              icon: FeatherIcons.repeat,
              title: lang.subscription_history,
              onTap: () {},
            ),
            ListTileWidget(
              icon: FeatherIcons.creditCard,
              title: lang.manage_subscription,
              onTap: () {},
            ),
            ListTileWidget(
              icon: FeatherIcons.moon,
              title: lang.dark_mode,
              onTap: () {},
            ),
            ListTileWidget(
              icon: FeatherIcons.mail,
              title: lang.cooperation_information,
              onTap: () {},
            ),
            const Divider(),
            ListTileWidget(
              icon: FeatherIcons.trendingUp,
              title: lang.trending,
              onTap: () {},
            ),
            ListTileWidget(
              icon: FeatherIcons.mapPin,
              title: lang.regional_news,
              onTap: () {},
            ),
            ListTileWidget(
              icon: FeatherIcons.camera,
              title: lang.photo_gallery,
              onTap: () {},
            ),
            ListTileWidget(
              icon: FeatherIcons.video,
              title: lang.video,
              onTap: () {},
            ),
            ListTileWidget(
              icon: FeatherIcons.edit3,
              title: lang.opinions_and_stories,
              onTap: () {},
            ),
            ListTileWidget(
              icon: FeatherIcons.barChart2,
              title: lang.author_ranking,
              onTap: () {},
            ),
            const Divider(),
            ListTileWidget(
              title: lang.news,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.entertaiment,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.mom,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.food_and_travel,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.tech_and_science,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.automotive,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.woman,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.sports,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.business,
              onTap: () {},
            ),
            ListTileWidget(
              title: lang.buzz,
              onTap: () {},
            ),
            const Divider(),
            ListTileWidget(
              title: lang.how_to_write_in_kumparan,
              onTap: () {},
            ),
            ExpansionTile(
              title: Text(
                lang.about_kumparan,
                style: theme.textTheme.bodyText2,
              ),
              children: [
                ListTileWidget(
                  title: lang.life_at_kumparan,
                  fontSize: 12,
                  onTap: () {},
                ),
                ListTileWidget(
                  title: lang.help,
                  fontSize: 12,
                  onTap: () {},
                ),
                ListTileWidget(
                  title: lang.terms_and_privacy_policy,
                  fontSize: 12,
                  onTap: () {},
                ),
                ListTileWidget(
                  title: lang.kumparan_community_guide,
                  fontSize: 12,
                  onTap: () {},
                ),
                ListTileWidget(
                  title: lang.cyber_media_guide,
                  fontSize: 12,
                  onTap: () {},
                ),
                ListTileWidget(
                  title: lang.advertisement,
                  fontSize: 12,
                  onTap: () {},
                ),
                ListTileWidget(
                  title: lang.career,
                  fontSize: 12,
                  onTap: () {},
                ),
              ],
            ),
            ListTileWidget(
              icon: FeatherIcons.logOut,
              title: lang.exit,
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
