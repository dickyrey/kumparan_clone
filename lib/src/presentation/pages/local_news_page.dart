import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
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
            (_isGPSActivate == true)
                ? Text('NICE JOB')
                : EmptyDataWidget(
                    illustration: CustomIcons.local_news,
                    label: lang
                        .activate_gps_and_find_interesting_information_around_you,
                    useButton: true,
                    buttonLabel: lang.activate_gps,
                    margin: MARGIN,
                    onTap: () {
                      Geolocator.requestPermission().then((status) {
                        print(status);
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
        lang.local_news,
        style: theme.textTheme.headline3,
      ),
      bottom: TabBar(
        labelStyle: theme.textTheme.headline4,
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
  const _NearbyContentTabView({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListView.separated(
                  itemCount: state.articleList.take(5).length,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: MARGIN),
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
              padding: const EdgeInsets.all(MARGIN),
              child: TextFormFieldWidget(
                hintText: 'Cari Provinsi',
                suffixIcon: IconButton(
                  icon: const Icon(FeatherIcons.search),
                  onPressed: () {},
                ),
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
                      padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                      child: Row(
                        children: [
                          Container(
                            width: 5,
                            height: 35,
                            color: theme.primaryColor,
                          ),
                          const SizedBox(width: SPACE12),
                          Text(
                            lang.all_province,
                            style: theme.textTheme.headline1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: SPACE25),
                    ListView.builder(
                      itemCount: (state.searchResultList.isEmpty)
                          ? state.provinceList.length
                          : state.searchResultList.length,
                      padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final data = (state.searchResultList.isEmpty)
                            ? state.provinceList[index]
                            : state.searchResultList[index];

                        return TextButton(
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              data,
                              style: theme.textTheme.bodyText1,
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
