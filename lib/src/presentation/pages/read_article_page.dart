import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:intl/intl.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/screens.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/presentation/widgets/comment_card_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';

class ReadArticlePage extends StatefulWidget {
  const ReadArticlePage({super.key, required this.article});

  final Article article;

  @override
  State<ReadArticlePage> createState() => _ReadArticlePageState();
}

class _ReadArticlePageState extends State<ReadArticlePage> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context, article: widget.article),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: Const.space25),
                  Text(
                    'NEWS',
                    style: theme.textTheme.headline4
                        ?.copyWith(color: theme.primaryColor),
                  ),
                  const SizedBox(height: Const.space8),
                  Text(
                    widget.article.title,
                    style: theme.textTheme.headline1,
                  ),
                  const SizedBox(height: Const.space15),
                  Text(
                    'LOREM',
                    style: theme.textTheme.headline4,
                  ),
                  const SizedBox(height: Const.space12),
                  Text(
                    '${DateFormat.yMMMMEEEEd().format(widget.article.createdAt)} - waktu baca 2 menit',
                    style: theme.textTheme.subtitle2,
                  ),
                  const SizedBox(height: Const.space15),
                  // Html(
                  //   data: 'widget.article.contentHtml',
                  // ),
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
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormFieldWidget(
                      hintText: lang.write_comment,
                    ),
                  ),
                  const SizedBox(width: Const.space12),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isLiked = !_isLiked;
                      });
                    },
                    child: Icon(
                      (_isLiked == true) ? Icons.favorite : FeatherIcons.heart,
                      color: (_isLiked == true)
                          ? Colors.red
                          : ColorLight.fontTitle,
                    ),
                  ),
                  const SizedBox(width: Const.space15),
                  GestureDetector(
                    onTap: () {
                      _showCommentDialog(context);
                    },
                    child: const Icon(FeatherIcons.messageCircle),
                  ),
                  const SizedBox(width: Const.space15),
                  GestureDetector(
                    onTap: () async {
                      await FlutterShare.share(
                        title: 'Share message',
                        linkUrl: 'https://google.com',
                        chooserTitle: 'Example Chooser Title',
                      );
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

  Future<dynamic> _showCommentDialog(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: Screens.heigth(context) - 100,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Const.margin,
                  vertical: Const.space12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      lang.comments,
                      style: theme.textTheme.headline4,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(FeatherIcons.x),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Const.margin,
                    vertical: Const.space12,
                  ),
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const CommentCardWidget();
                  },
                ),
              ),
              Card(
                elevation: 7,
                margin: EdgeInsets.zero,
                child: Container(
                  width: Screens.width(context),
                  height: 70,
                  color: theme.backgroundColor,
                  padding: const EdgeInsets.only(left: Const.margin),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormFieldWidget(
                          hintText: lang.write_comment,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // TODO(dickyrey): Send comment
                        },
                        icon: Icon(
                          Icons.send,
                          color: theme.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
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
        'LOREM',
        style: theme.textTheme.headline3,
      ),
    );
  }
}
