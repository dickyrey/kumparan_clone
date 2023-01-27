import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/widgets/empty_data_widget.dart';

class MyContentPage extends StatelessWidget {
  const MyContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: _appBar(context),
        body: TabBarView(
          children: [
            EmptyDataWidget(
              isExpanded: true,
              illustration: CustomIcons.content,
              label: lang.there_is_no_content_yet,
            ),
            EmptyDataWidget(
              isExpanded: true,
              illustration: CustomIcons.content,
              label: lang.there_is_no_content_yet,
            ),
            EmptyDataWidget(
              isExpanded: true,
              illustration: CustomIcons.content,
              label: lang.there_is_no_content_yet,
            ),
            EmptyDataWidget(
              isExpanded: true,
              illustration: CustomIcons.content,
              label: lang.there_is_no_content_yet,
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
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      title: Text(
        lang.my_content,
        style: theme.textTheme.headlineSmall,
      ),
      bottom: TabBar(
        labelStyle: theme.textTheme.headlineSmall,
        labelColor: ColorLight.fontTitle,
        unselectedLabelColor: ColorLight.fontSubtitle,
        isScrollable: true,
        tabs: [
          Tab(text: lang.draf),
          Tab(text: lang.moderated),
          Tab(text: lang.rejected),
          Tab(text: lang.published),
        ],
      ),
    );
  }
}
