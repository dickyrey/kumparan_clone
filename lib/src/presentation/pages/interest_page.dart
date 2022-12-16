import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/common/screens.dart';
import 'package:kumparan_clone/src/presentation/bloc/interest/interest_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';

class InterestPage extends StatefulWidget {
  const InterestPage({super.key});

  @override
  State<InterestPage> createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  @override
  void initState() {
    super.initState();

    // Get category list from database and store to InterestFormState
    Future.microtask(
      () => context
          .read<InterestFormBloc>()
          .add(const InterestFormEvent.fetchCategory()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        elevation: 2,
      ),
      body: Column(
        children: [
          BlocBuilder<InterestFormBloc, InterestFormState>(
            builder: (context, state) {
              return Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: SPACE25),
                      Text(
                        lang.your_favorite_topic,
                        style: theme.textTheme.headline2,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        lang.let_us_know_what_your_preference,
                        style: theme.textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: SPACE25),
                      Divider(
                        color: theme.dividerColor,
                        thickness: 1,
                      ),
                      ListView.separated(
                        itemCount: state.categories.length,
                        padding: const EdgeInsets.symmetric(horizontal: MARGIN),
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: theme.dividerColor,
                            thickness: 1,
                          );
                        },
                        itemBuilder: (context, index) {
                          final category = state.selectedCategory[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  category.category.name,
                                  style: theme.textTheme.headline3,
                                ),
                                Switch(
                                  value: category.value,
                                  activeColor: theme.primaryColor,
                                  onChanged: (v) {
                                    setState(() {
                                      category.value = v;
                                    });
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: SPACE25),
                      Text(
                        lang.you_can_reset_it_on_the_notification_settings_page,
                        style: theme.textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: SPACE25),
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: MARGIN,
              vertical: SPACE12,
            ),
            child: SizedBox(
              height: 50,
              width: Screens.width(context),
              child: BlocBuilder<InterestFormBloc, InterestFormState>(
                builder: (context, state) {
                  // Get the list of selected category values
                  var categoryMap =
                      state.selectedCategory.map((e) => e.value).toList();
                  // Filter the list to get only the true values
                  var findTrueElement =
                      categoryMap.where((element) => element == true);
                  // Get the length of the true values list
                  var totalOfTrue = findTrueElement.length;

                  return ElevatedButtonWidget(
                    onTap: totalOfTrue < 3
                        ? null
                        : () {
                            Navigator.pushNamed(context, ON_BOARDING);
                          },
                    label: totalOfTrue < 3
                        ? lang.choose_at_least_3_topics
                        : lang.next,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
