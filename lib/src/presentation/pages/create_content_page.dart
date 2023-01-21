import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';

class CreateContentPage extends StatefulWidget {
  const CreateContentPage({super.key});

  @override
  State<CreateContentPage> createState() => _CreateContentPageState();
}

class _CreateContentPageState extends State<CreateContentPage> {
  final _controller = quill.QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Column(
        children: [
          Expanded(
            child: Container(
              // color: Colors.black12,
              margin: const EdgeInsets.all(Const.margin),
              child: quill.QuillEditor.basic(
                controller: _controller,
                readOnly: false,
              ),
            ),
          ),
          quill.QuillToolbar.basic(
            controller: _controller,
            toolbarIconSize: 23,
            showClearFormat: false,
            showListCheck: false,
            showBackgroundColorButton: false,
            showSearchButton: false,
            multiRowsDisplay: false,
            showRedo: false,
            showStrikeThrough: false,
            showFontFamily: false,
            showUndo: false,
          )
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
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: theme.iconTheme.color,
        ),
      ),
      title: Row(
        children: [
          Expanded(
            child: quill.QuillToolbar.basic(
              controller: _controller,
              toolbarIconSize: 23,
              showFontFamily: false,
              showBackgroundColorButton: false,
              showBoldButton: false,
              showCenterAlignment: false,
              showClearFormat: false,
              showCodeBlock: false,
              showColorButton: false,
              showDividers: false,
              showFontSize: false,
              showHeaderStyle: false,
              showIndent: false,
              showInlineCode: false,
              showItalicButton: false,
              showJustifyAlignment: false,
              showLeftAlignment: false,
              showLink: false,
              showListBullets: false,
              showListCheck: false,
              showListNumbers: false,
              showQuote: false,
              showRightAlignment: false,
              showSearchButton: false,
              showStrikeThrough: false,
              showUnderLineButton: false,
            ),
          ),
          const Spacer(),
          ElevatedButtonWidget(
            onTap: () {
              // final content =
              //     _controller.document.toDelta().toJson().toString();
              // final result = deltaToMarkdown(content);
            },
            width: 80,
            height: 30,
            label: lang.save,
          )
        ],
      ),
      centerTitle: false,
    );
  }
}
