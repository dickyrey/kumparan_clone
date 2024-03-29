import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/bloc/interest/interest_form_bloc.dart';

class InterestSettingPage extends StatefulWidget {
  const InterestSettingPage({super.key});

  @override
  State<InterestSettingPage> createState() => _InterestSettingPageState();
}

class _InterestSettingPageState extends State<InterestSettingPage> {
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
      appBar: _appBar(context),
      body: BlocBuilder<InterestFormBloc, InterestFormState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: Const.space25),
                Text(
                  lang.set_notifications_to_get_content_from_your_favorite_channels,
                  style: theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Const.space25),
                ListView.separated(
                  itemCount: state.categories.length,
                  padding: const EdgeInsets.symmetric(horizontal: Const.margin),
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
                      padding: const EdgeInsets.only(bottom: Const.space8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            category.category.name,
                            style: theme.textTheme.headlineSmall,
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
                const SizedBox(height: Const.space25),
              ],
            ),
          );
        },
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
        lang.notification_setting,
        style: theme.textTheme.headlineSmall,
      ),
    );
  }
}
