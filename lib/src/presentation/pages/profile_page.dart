import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/screens.dart';
import 'package:kumparan_clone/src/presentation/widgets/empty_data_widget.dart';
import 'package:octo_image/octo_image.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  List<Widget> _tabViewList(BuildContext context) => [
        Tab(text: AppLocalizations.of(context)!.contents),
        Tab(text: AppLocalizations.of(context)!.comments),
        Tab(text: AppLocalizations.of(context)!.likes),
      ];

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _headerProfile(
              context,
              image:
                  'https://i.pinimg.com/564x/2b/54/5a/2b545ae586764da77f5717d8406d0910.jpg',
              header:
                  'https://i.pinimg.com/564x/9a/84/7c/9a847c55b9f72027d97ea310d662e253.jpg',
            ),
            const SizedBox(height: SPACE25),
            Text(
              'Troyard Esport',
              style: theme.textTheme.headline3,
            ),
            const SizedBox(height: SPACE15),
            RichText(
              text: TextSpan(
                style: theme.textTheme.bodyText2,
                children: [
                  TextSpan(text: '121', style: theme.textTheme.headline4),
                  TextSpan(text: ' ${lang.following}'),
                  const TextSpan(text: ' • '),
                  TextSpan(text: '3553', style: theme.textTheme.headline4),
                  TextSpan(text: ' ${lang.follower}'),
                ],
              ),
            ),
            const SizedBox(height: SPACE15),
            TextButton(
              onPressed: () {},
              child: Text(
                lang.change_profile,
                style: theme.textTheme.headline3,
              ),
            ),
            const SizedBox(height: SPACE25),
            TabBar(
              controller: _tabController,
              indicatorColor: theme.primaryColor,
              labelColor: theme.primaryColor,
              unselectedLabelColor: theme.disabledColor,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: _tabViewList(context),
            ),
            const SizedBox(height: SPACE15),
            Center(
              child: [
                EmptyDataWidget(
                  illustration: CustomIcons.content,
                  label: lang.there_is_no_content_yet,
                ),
                EmptyDataWidget(
                  illustration: CustomIcons.comments,
                  label: lang.no_comments_yet,
                ),
                EmptyDataWidget(
                  illustration: CustomIcons.likes,
                  label: lang.nothing_to_like_yet,
                ),
              ][_tabController.index],
            ),
            const SizedBox(height: SPACE25),
          ],
        ),
      ),
    );
  }

  SizedBox _headerProfile(
    BuildContext context, {
    required String image,
    required String header,
  }) {
    return SizedBox(
      width: Screens.width(context),
      height: 250,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 50,
            child: OctoImage(
              image: CachedNetworkImageProvider(header),
              height: 200,
              width: Screens.width(context),
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(image),
                ),
              ),
            ),
          ),
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
      centerTitle: false,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: theme.primaryColor,
            backgroundImage: const CachedNetworkImageProvider(
              'https://i.pinimg.com/564x/2b/54/5a/2b545ae586764da77f5717d8406d0910.jpg',
            ),
          ),
          const SizedBox(width: SPACE12),
          Text(
            lang.notification,
            style: theme.textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
