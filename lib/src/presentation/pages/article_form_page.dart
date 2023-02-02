import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/entities/checkbox_state.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_detail_watcher/article_detail_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_form/article_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';
import 'package:kumparan_clone/src/utilities/toast.dart';

class ArticleFormPage extends StatefulWidget {
  const ArticleFormPage({
    super.key,
    this.isEdit = false,
  });
  final bool isEdit;

  @override
  State<ArticleFormPage> createState() => _ArticleFormPageState();
}

class _ArticleFormPageState extends State<ArticleFormPage> {
  late HtmlEditorController htmlController = HtmlEditorController();
  String initialHtml = '';
  int _selectedIndex = 0;
  final _formKey = GlobalKey<FormState>();
  PageController _pageController = PageController();
  late TextEditingController _titleController;

  @override
  void initState() {
    super.initState();
    htmlController = HtmlEditorController();
    final state = context.read<ArticleFormBloc>().state;
    _pageController = PageController(initialPage: _selectedIndex);
    _titleController = TextEditingController(text: state.title);
    if (widget.isEdit == true) {
      initialHtml = state.content;
    }
  }

  @override
  Widget build(BuildContext context) {
    final article = context.read<ArticleFormBloc>().state;
    return BlocListener<ArticleFormBloc, ArticleFormState>(
      listener: (context, state) {
        if (state.state == RequestState.error) {
          showToast(msg: 'Error while uploading article');
        } else if (state.state == RequestState.loaded) {
          if (widget.isEdit == true) {
            context
                .read<ArticleDetailWatcherBloc>()
                .add(ArticleDetailWatcherEvent.fetchArticleDetail(article.articleId));
            context
                .read<ArticleFormBloc>()
                .add(const ArticleFormEvent.initial());
            showToast(msg: 'Article berhasil diubah');
            Navigator.pop(context);
          } else {
            context
                .read<ArticleFormBloc>()
                .add(const ArticleFormEvent.initial());
            showToast(msg: 'Success upload artikel');
            Navigator.pop(context);
          }
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
              EditorContentPage(
                controller: htmlController,
                initialHtml: initialHtml,
              ),
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
          BlocBuilder<ArticleFormBloc, ArticleFormState>(
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
                    if (widget.isEdit == true) {
                      context.read<ArticleFormBloc>().add(
                            const ArticleFormEvent.updateArticlePressed(),
                          );
                    } else {
                      context.read<ArticleFormBloc>().add(
                            const ArticleFormEvent.createArticlePressed(),
                          );
                    }
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

    return BlocBuilder<ArticleFormBloc, ArticleFormState>(
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
                  context.read<ArticleFormBloc>().add(
                        const ArticleFormEvent.pickImage(
                          ImageSource.gallery,
                        ),
                      );
                },
                child: AspectRatio(
                  aspectRatio: 16 / 10,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: theme.disabledColor),
                      borderRadius: BorderRadius.circular(Const.radius),
                      image: (state.imageFile != null)
                          ? DecorationImage(
                              image: FileImage(state.imageFile!),
                            )
                          : (state.imageUrl != '')
                              ? DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    state.imageUrl,
                                  ),
                                )
                              : null,
                    ),
                    child: (state.imageFile != null || state.imageUrl != '')
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
                      .read<ArticleFormBloc>()
                      .add(ArticleFormEvent.titleOnChanged(v));
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
    required HtmlEditorController controller,
    required this.initialHtml,
  }) : _controller = controller;

  final HtmlEditorController _controller;
  final String initialHtml;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return HtmlEditor(
      controller: _controller,
      callbacks: Callbacks(
        onInit: _controller.setFullScreen,
        onChangeContent: (p0) {
          context
              .read<ArticleFormBloc>()
              .add(ArticleFormEvent.contentOnChanged(p0!));
        },
      ),
      htmlToolbarOptions: HtmlToolbarOptions(
        toolbarType: ToolbarType.nativeExpandable,
        buttonColor: ColorLight.fontTitle,
        buttonSelectedColor: theme.primaryColor,
        toolbarItemHeight: 30,
      ),
      htmlEditorOptions: HtmlEditorOptions(
        hint: 'Tulis artikelmu disini',
        shouldEnsureVisible: true,
        androidUseHybridComposition: false,
        initialText: initialHtml,
      ),
    );
  }
}
