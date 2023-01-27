import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:image_picker/image_picker.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/entities/checkbox_state.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/create_article_form/create_article_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';
import 'package:kumparan_clone/src/utilities/toast.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

class ArticleFormPage extends StatefulWidget {
  const ArticleFormPage({super.key});

  @override
  State<ArticleFormPage> createState() => _ArticleFormPageState();
}

class _ArticleFormPageState extends State<ArticleFormPage> {
  int _selectedIndex = 0;
  final _formKey = GlobalKey<FormState>();
  var _quillController = quill.QuillController.basic();
  PageController _pageController = PageController();
  late TextEditingController _titleController;

  @override
  void initState() {
    super.initState();
    final state = context.read<CreateArticleFormBloc>().state;
    _pageController = PageController(initialPage: _selectedIndex);
    _titleController = TextEditingController(text: state.title);
    // _quillController = quill.QuillController(
    //   document: quill.Document.fromJson(),
    //   selection: const TextSelection.collapsed(offset: 0),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateArticleFormBloc, CreateArticleFormState>(
      listener: (context, state) {
        if (state.state == RequestState.error) {
          showToast(msg: 'Error while uploading article');
        } else if (state.state == RequestState.loaded) {
          context
              .read<CreateArticleFormBloc>()
              .add(const CreateArticleFormEvent.initial());
          Navigator.pop(context);
          showToast(msg: 'Success upload artikel');
        }
      },
      child: Scaffold(
        appBar: _appBar(context),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: PageView(
            controller: _pageController,
            onPageChanged: (v) {
              setState(() {
                _selectedIndex = v;
              });
            },
            children: [
              CreateTitleContentPage(titleController: _titleController),
              EditorContentPage(controller: _quillController),
            ],
          ),
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
      title: Row(
        children: [
          Expanded(
            child: quill.QuillToolbar.basic(
              controller: _quillController,
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
          BlocBuilder<CreateArticleFormBloc, CreateArticleFormState>(
            builder: (context, state) {
              return ElevatedButtonWidget(
                onTap: () {
                  if (_selectedIndex == 0) {
                    if (_formKey.currentState!.validate()) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    }
                  } else {
                    final content =
                        _quillController.document.toDelta().toJson();
                    final converter = QuillDeltaToHtmlConverter(
                      List.castFrom(content),
                      ConverterOptions.forEmail(),
                    );
                    context.read<CreateArticleFormBloc>().add(
                          CreateArticleFormEvent.contentOnChanged(
                            converter.convert(),
                          ),
                        );
                    context.read<CreateArticleFormBloc>().add(
                          const CreateArticleFormEvent.createArticlePressed(),
                        );
                  }
                },
                width: 80,
                height: 30,
                label: lang.save,
                isLoading: state.isSubmitting ? true : false,
              );
            },
          )
        ],
      ),
      centerTitle: false,
    );
  }
}

class CreateTitleContentPage extends StatefulWidget {
  const CreateTitleContentPage({super.key, required this.titleController});
  final TextEditingController titleController;

  @override
  State<CreateTitleContentPage> createState() => _CreateTitleContentPageState();
}

class _CreateTitleContentPageState extends State<CreateTitleContentPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<CreateArticleFormBloc, CreateArticleFormState>(
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Const.margin),
              Text(
                'Tambah Poster',
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: Const.space12),
              InkWell(
                borderRadius: BorderRadius.circular(Const.radius),
                onTap: () {
                  context.read<CreateArticleFormBloc>().add(
                        const CreateArticleFormEvent.pickImage(
                          ImageSource.gallery,
                        ),
                      );
                },
                child: AspectRatio(
                  aspectRatio: 16 / 6,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: theme.disabledColor),
                      borderRadius: BorderRadius.circular(Const.radius),
                      image: state.thumbnailFile != null
                          ? DecorationImage(
                              image: FileImage(state.thumbnailFile!),
                            )
                          : null,
                    ),
                    child: state.thumbnailFile != null
                        ? const SizedBox()
                        : Text(
                            'Upload Thumbnail',
                            style: theme.textTheme.bodyLarge,
                          ),
                  ),
                ),
              ),
              const SizedBox(height: Const.space15),
              Text(
                'Buat Judul',
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: Const.space12),
              TextFormFieldWidget(
                controller: widget.titleController,
                maxLines: null,
                hintText: 'Tulis judul di sini',
                onChanged: (v) {
                  context
                      .read<CreateArticleFormBloc>()
                      .add(CreateArticleFormEvent.titleOnChanged(v));
                },
              ),
              const SizedBox(height: Const.space15),
              Text(
                'Pilih Kategori',
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: Const.space12),
              Wrap(
                children: [...state.categoryList.map(_buildCheckBox)],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCheckBox(CheckBoxState e) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Checkbox(
          value: e.value,
          onChanged: (v) => setState(() => e.value = v!),
          activeColor: theme.primaryColor,
        ),
        const SizedBox(width: Const.space15),
        Text(
          e.category.name,
          style: theme.textTheme.bodyMedium,
        )
      ],
    );
  }
}

class EditorContentPage extends StatelessWidget {
  const EditorContentPage({
    super.key,
    required quill.QuillController controller,
  }) : _controller = controller;

  final quill.QuillController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
