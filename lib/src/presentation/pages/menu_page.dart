import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_form/article_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/my_article_watcher/my_article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/auth_watcher/auth_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/category/category_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user/user_watcher/user_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/dialog_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/list_tile_widget.dart';
import 'package:kumparan_clone/src/utilities/toast.dart';

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
            const SizedBox(height: Const.space15),
            BlocBuilder<UserWatcherBloc, UserWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    return const SizedBox();
                  },
                  loaded: (state) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: Const.margin,
                      ),
                      height: 90,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.black26,
                            backgroundImage: CachedNetworkImageProvider(
                              state.user.photo.isEmpty
                                  ? Const.photo
                                  : state.user.photo,
                            ),
                          ),
                          const SizedBox(width: Const.space15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  state.user.name,
                                  style: theme.textTheme.headlineSmall,
                                  maxLines: 1,
                                ),
                                Text(
                                  state.user.email,
                                  style: theme.textTheme.titleLarge,
                                  maxLines: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      CHANGE_PROFILE,
                                    );
                                  },
                                  child: Text(
                                    lang.change_profile,
                                    style: theme.textTheme.titleLarge?.copyWith(
                                      color: theme.primaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: Const.space25),
            BlocBuilder<CategoryWatcherBloc, CategoryWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    return const SizedBox();
                  },
                  loaded: (state) {
                    return ElevatedButtonWidget(
                      onTap: () {
                        context.read<ArticleFormBloc>().add(
                              const ArticleFormEvent.initial(),
                            );
                        Navigator.pushNamed(context, ARTICLE_FORM);
                      },
                      margin: const EdgeInsets.symmetric(
                        horizontal: Const.margin,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            FeatherIcons.edit3,
                            color: Colors.white,
                          ),
                          const SizedBox(width: Const.space12),
                          Text(
                            lang.write_an_article,
                            style: theme.textTheme.labelMedium,
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: Const.space15),
            ListTileWidget(
              icon: FeatherIcons.fileText,
              title: lang.my_content,
              onTap: () {
                context
                    .read<MyArticleWatcherBloc>()
                    .add(const MyArticleWatcherEvent.fetchArticle());
                Navigator.pushNamed(context, MY_ARTICLE);
              },
            ),
            const SizedBox(height: Const.space25),
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
              onTap: () {
                Navigator.pushNamed(context, READ_HISTORY);
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.slack,
              title: lang.subscription,
              onTap: () {
                showToast(msg: lang.feature_not_available_yet);
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.repeat,
              title: lang.subscription_history,
              onTap: () {
                showToast(msg: lang.feature_not_available_yet);
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.creditCard,
              title: lang.manage_subscription,
              onTap: () {
                showToast(msg: lang.feature_not_available_yet);
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.moon,
              title: lang.dark_mode,
              onTap: () {
                showToast(msg: lang.feature_not_available_yet);
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.mail,
              title: lang.cooperation_information,
              onTap: () {
                showToast(msg: lang.feature_not_available_yet);
              },
            ),
            const Divider(),
            ListTileWidget(
              icon: FeatherIcons.trendingUp,
              title: lang.trending,
              onTap: () {
                Navigator.pushNamed(context, TRENDING_ARTICLE);
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.mapPin,
              title: lang.local_news,
              onTap: () {
                Navigator.pushNamed(context, LOCAL_NEWS);
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.camera,
              title: lang.photo_gallery,
              onTap: () {
                // TODO(dickyrey): List of Article contains photos
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.video,
              title: lang.video,
              onTap: () {
                // TODO(dickyrey): List of Article contains videos
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.edit3,
              title: lang.opinions_and_stories,
              onTap: () {
                // TODO(dickyrey): List of opinions and story
              },
            ),
            ListTileWidget(
              icon: FeatherIcons.barChart2,
              title: lang.author_ranking,
              onTap: () {
                // TODO(dickyrey): List of author rank
              },
            ),
            const Divider(),
            ListTileWidget(
              title: lang.news,
              onTap: () {
                // TODO(dickyrey): List of Article category NEWS
              },
            ),
            ListTileWidget(
              title: lang.entertaiment,
              onTap: () {
                // TODO(dickyrey): List of Article category entertaiment
              },
            ),
            ListTileWidget(
              title: lang.mom,
              onTap: () {
                // TODO(dickyrey): List of Article category mom
              },
            ),
            ListTileWidget(
              title: lang.food_and_travel,
              onTap: () {
                // TODO(dickyrey): List of Article category food and travel
              },
            ),
            ListTileWidget(
              title: lang.tech_and_science,
              onTap: () {
                // TODO(dickyrey): List of Article category tech and science
              },
            ),
            ListTileWidget(
              title: lang.automotive,
              onTap: () {
                // TODO(dickyrey): List of Article category automtovive
              },
            ),
            ListTileWidget(
              title: lang.woman,
              onTap: () {
                // TODO(dickyrey): List of Article category woman
              },
            ),
            ListTileWidget(
              title: lang.sports,
              onTap: () {
                // TODO(dickyrey): List of Article category sports
              },
            ),
            ListTileWidget(
              title: lang.business,
              onTap: () {
                // TODO(dickyrey): List of Article category business
              },
            ),
            ListTileWidget(
              title: lang.buzz,
              onTap: () {
                // TODO(dickyrey): List of Article category buzz
              },
            ),
            const Divider(),
            ListTileWidget(
              title: lang.how_to_write_in_kumparan,
              onTap: () {
                // TODO(dickyrey): Tutorial how to write
              },
            ),
            ExpansionTile(
              title: Text(
                lang.about_kumparan,
                style: theme.textTheme.bodyMedium,
              ),
              children: [
                ListTileWidget(
                  title: lang.life_at_kumparan,
                  fontSize: 12,
                  onTap: () {
                    // TODO(dickyrey): life_at_kumparan
                  },
                ),
                ListTileWidget(
                  title: lang.help,
                  fontSize: 12,
                  onTap: () {
                    // TODO(dickyrey): call center
                  },
                ),
                ListTileWidget(
                  title: lang.terms_and_privacy_policy,
                  fontSize: 12,
                  onTap: () {
                    // TODO(dickyrey): terms_and_privacy_policy
                  },
                ),
                ListTileWidget(
                  title: lang.kumparan_community_guide,
                  fontSize: 12,
                  onTap: () {
                    // TODO(dickyrey): kumparan_community_guide
                  },
                ),
                ListTileWidget(
                  title: lang.cyber_media_guide,
                  fontSize: 12,
                  onTap: () {
                    // TODO(dickyrey): cyber_media_guide
                  },
                ),
                ListTileWidget(
                  title: lang.advertisement,
                  fontSize: 12,
                  onTap: () {
                    // TODO(dickyrey): advertisement
                  },
                ),
                ListTileWidget(
                  title: lang.career,
                  fontSize: 12,
                  onTap: () {
                    // TODO(dickyrey): career
                  },
                ),
              ],
            ),
            ListTileWidget(
              icon: FeatherIcons.logOut,
              title: lang.exit,
              onTap: () {
                showConfirmationDialog(
                  context,
                  title: AppLocalizations.of(context)!
                      .are_you_sure_want_to_sign_out,
                  primaryButtonLabel: lang.exit,
                  onPrimaryButtonTap: () {
                    Navigator.pop(context);
                    context
                        .read<AuthWatcherBloc>()
                        .add(const AuthWatcherEvent.signOut());
                    context
                        .read<UserWatcherBloc>()
                        .add(const UserWatcherEvent.init());
                  },
                );
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
      backgroundColor: theme.colorScheme.background,
      title: Text(
        lang.menu,
        style: theme.textTheme.headlineSmall,
      ),
    );
  }
}
