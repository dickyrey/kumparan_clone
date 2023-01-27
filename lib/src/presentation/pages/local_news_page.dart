import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/new_article/new_article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/search/search_province_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/article_card_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/empty_data_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';

class LocalNewsPage extends StatefulWidget {
  const LocalNewsPage({super.key});

  @override
  State<LocalNewsPage> createState() => _LocalNewsPageState();
}

class _LocalNewsPageState extends State<LocalNewsPage> {
  bool _isGPSActivate = false;

  @override
  void initState() {
    super.initState();
    Geolocator.checkPermission().then((status) {
      if (status == LocationPermission.always) {
        setState(() {
          _isGPSActivate = true;
        });
      } else {
        setState(() {
          _isGPSActivate = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _appBar(context),
        body: TabBarView(
          children: [
            if (_isGPSActivate == true)
              const _NearbyContentTabView()
            else
              EmptyDataWidget(
                illustration: CustomIcons.localNews,
                label: lang
                    .activate_gps_and_find_interesting_information_around_you,
                useButton: true,
                buttonLabel: lang.activate_gps,
                margin: Const.margin,
                onTap: () {
                  Geolocator.requestPermission().then((status) {
                    if (status == LocationPermission.always) {
                      setState(() {
                        _isGPSActivate = true;
                      });
                    } else {
                      setState(() {
                        _isGPSActivate = false;
                      });
                    }
                  });
                },
              ),
            const _OtherLocalNewsTabView(),
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
      elevation: .5,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      title: Text(
        lang.local_news,
        style: theme.textTheme.headlineSmall,
      ),
      bottom: TabBar(
        labelStyle: theme.textTheme.headlineSmall,
        labelColor: ColorLight.fontTitle,
        unselectedLabelColor: ColorLight.fontTitle,
        tabs: [
          Tab(text: lang.nearby),
          Tab(text: lang.other_region),
        ],
      ),
    );
  }
}

class _NearbyContentTabView extends StatelessWidget {
  const _NearbyContentTabView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewArticleWatcherBloc, NewArticleWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Container();
          },
          loading: (_) {
            return Container();
          },
          error: (_) {
            return Container();
          },
          loaded: (state) {
            return Column(
              children: [
                ListView.separated(
                  itemCount: state.articleList.take(5).length,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: Const.margin),
                      child: Divider(),
                    );
                  },
                  itemBuilder: (context, index) {
                    return ArticleCardWidget(
                      index: index,
                      article: state.articleList[index],
                      cardAlignment: CardAlignment.vertical,
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _OtherLocalNewsTabView extends StatelessWidget {
  const _OtherLocalNewsTabView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return BlocBuilder<SearchProvinceFormBloc, SearchProvinceFormState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(Const.margin),
              child: TextFormFieldWidget(
                hintText: lang.search_province,
                suffixIcon: const Icon(FeatherIcons.search),
                onChanged: (value) {
                  context
                      .read<SearchProvinceFormBloc>()
                      .add(SearchProvinceFormEvent.searchOnChanged(value));
                },
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Const.margin),
                      child: Row(
                        children: [
                          Container(
                            width: 5,
                            height: 35,
                            color: theme.primaryColor,
                          ),
                          const SizedBox(width: Const.space12),
                          Text(
                            lang.all_province,
                            style: theme.textTheme.headlineLarge,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: Const.space25),
                    ListView.builder(
                      itemCount: (state.searchResultList.isEmpty)
                          ? state.provinceList.length
                          : state.searchResultList.length,
                      padding:
                          const EdgeInsets.symmetric(horizontal: Const.margin),
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final data = (state.searchResultList.isEmpty)
                            ? state.provinceList[index]
                            : state.searchResultList[index];

                        return TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              PROVINCE_NEWS,
                              arguments: data,
                            );
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              data,
                              style: theme.textTheme.bodyLarge,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
