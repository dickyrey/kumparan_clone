import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/domain/entities/boarding.dart';
import 'package:kumparan_clone/src/presentation/bloc/boarding/boarding_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/outlined_button_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final _controller = PageController(initialPage: 0);
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<BoardingWatcherBloc>()
          .add(const BoardingWatcherEvent.fetchBoardingList()),
    );
  }

  // This is CORE of On Boarding Page

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(theme, lang),
      body: BlocBuilder<BoardingWatcherBloc, BoardingWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) {
              return const SizedBox();
            },
            loading: (_) {
              return const SizedBox();
            },
            error: (_) {
              return const SizedBox();
            },
            loaded: (state) {
              final boarding = state.boarding;
              return _mainPage(boarding, theme, lang);
            },
          );
        },
      ),
    );
  }

  // Main Page if Boarding data successfull fetch from database

  Column _mainPage(
    List<Boarding> boarding,
    ThemeData theme,
    AppLocalizations lang,
  ) {
    return Column(
      children: [
        const SizedBox(height: 50),

        // Child on Expanded Below Contains
        // Main Page such as Illustration, Title and Subtitle
        Expanded(
          flex: 9,
          child: PageView.builder(
            controller: _controller,
            itemCount: boarding.length,
            scrollDirection: Axis.horizontal,
            onPageChanged: (v) {
              setState(() {
                _selectedIndex = v;
              });
            },
            itemBuilder: (context, index) {
              final data = boarding[index];
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: MARGIN,
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Image.asset(
                        data.image,
                      ),
                    ),
                    const Expanded(flex: 2, child: SizedBox()),
                    Text(
                      data.title,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headline1,
                    ),
                    const Expanded(flex: 1, child: SizedBox()),
                    Text(
                      data.subtitle,
                      style: theme.textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const Expanded(flex: 1, child: SizedBox()),

        // Child on this Expanded contains
        // DotsIndicator, Next Page Button, Register and Login Button
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: MARGIN,
            ),
            child: Column(
              children: [
                DotsIndicator(
                  dotsCount: boarding.length,
                  position: _selectedIndex.toDouble(),
                  decorator: DotsDecorator(
                    activeColor: theme.primaryColor,
                  ),
                ),
                Expanded(flex: 3, child: Container()),
                _selectedIndex == 3
                    ? ElevatedButtonWidget(
                        onTap: () {
                          // TODO(dickyrey) : Navigate to Create Account Page
                        },
                        label: lang.create_an_account,
                        color: theme.primaryColor,
                      )
                    : const SizedBox(),
                Expanded(flex: 2, child: Container()),
                _selectedIndex == 3
                    ? OutlinedButtonWidget(
                        onTap: () {
                          // TODO(dickyrey) : Navigate to Register Account
                        },
                        label: lang.already_have_an_account,
                      )
                    : OutlinedButtonWidget(
                        onTap: () {
                          // This method Will navigate to next page
                          // when OutlinedButton pressed

                          _controller.animateToPage(
                            _selectedIndex + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeOut,
                          );
                        },
                        label: lang.next,
                      ),
                Expanded(flex: 2, child: Container()),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // AppBar from On Boarding Page contains back button, logo and Skip button

  AppBar _appBar(ThemeData theme, AppLocalizations lang) {
    return AppBar(
      backgroundColor: theme.backgroundColor,
      elevation: 2,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            lang.skip,
            style: theme.textTheme.subtitle1,
          ),
        ),
      ],
    );
  }
}
