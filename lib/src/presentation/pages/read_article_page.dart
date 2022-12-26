import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:intl/intl.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/screens.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';

class ReadArticlePage extends StatelessWidget {
  const ReadArticlePage({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context, article: article),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: MARGIN),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: SPACE25),
                  Text(
                    'NEWS',
                    style: theme.textTheme.headline4
                        ?.copyWith(color: theme.primaryColor),
                  ),
                  const SizedBox(height: SPACE8),
                  Text(
                    article.title,
                    style: theme.textTheme.headline1,
                  ),
                  const SizedBox(height: SPACE15),
                  Text(
                    article.creatorName,
                    style: theme.textTheme.headline4,
                  ),
                  const SizedBox(height: SPACE12),
                  Text(
                    '${DateFormat.yMMMMEEEEd().format(article.createdAt)} - waktu baca 2 menit',
                    style: theme.textTheme.subtitle2,
                  ),
                  const SizedBox(height: SPACE15),
                  Html(
                    data: article.contentHtml,
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 7,
            margin: EdgeInsets.zero,
            child: Container(
              width: Screens.width(context),
              height: 70,
              color: theme.backgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: MARGIN),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormFieldWidget(
                      hintText: lang.write_comment,
                    ),
                  ),
                  const SizedBox(width: SPACE12),
                  GestureDetector(
                    onTap: () {
                      // TODO(dickyrey): Do some action
                    },
                    child: const Icon(FeatherIcons.heart),
                  ),
                  const SizedBox(width: SPACE15),
                  GestureDetector(
                    onTap: () {
                      // TODO(dickyrey): Do some action
                    },
                    child: const Icon(FeatherIcons.messageCircle),
                  ),
                  const SizedBox(width: SPACE15),
                  GestureDetector(
                    onTap: () {
                      // TODO(dickyrey): Do some action
                    },
                    child: const Icon(FeatherIcons.share2),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context, {required Article article}) {
    final theme = Theme.of(context);

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
        article.creatorName,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
