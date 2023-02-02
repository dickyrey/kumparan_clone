import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/entities/article_detail.dart';
import 'package:kumparan_clone/src/domain/entities/category.dart';
import 'package:kumparan_clone/src/domain/entities/checkbox_state.dart';
import 'package:kumparan_clone/src/domain/usecases/article/create_article.dart';
import 'package:kumparan_clone/src/domain/usecases/article/update_article.dart';
import 'package:kumparan_clone/src/utilities/image_cropper_utils.dart';

part 'article_form_event.dart';
part 'article_form_state.dart';
part 'article_form_bloc.freezed.dart';

class ArticleFormBloc extends Bloc<ArticleFormEvent, ArticleFormState> {
  ArticleFormBloc({
    required this.create,
    required this.update,
  }) : super(ArticleFormState.initial()) {
    on<ArticleFormEvent>((event, emit) async {
      await event.map(
        initial: (_) {
          emit(ArticleFormState.initial());
        },
        initialize: (event) async {
          final toEntity = event.article.categories
              .map((e) => CheckBoxState(category: e))
              .toList();

          toEntity.map((e) {
            state.categoryList
                .firstWhere((x) => x.category.id == e.category.id)
                .value = true;
          }).toList();

          final id = event.article.url.replaceFirst(Const.unusedPath, '');

          emit(
            state.copyWith(
              state: RequestState.empty,
              message: '',
              imageFile: null,
              isSubmitting: false,
              articleId: id,
              title: event.article.title,
              content: event.article.content,
              imageUrl: event.article.thumbnail,
            ),
          );
        },
        titleOnChanged: (e) {
          emit(state.copyWith(title: e.val));
        },
        contentOnChanged: (e) {
          emit(state.copyWith(content: e.html));
        },
        pickImage: (e) async {
          final pickedImage = await ImagePicker().pickImage(
            source: e.source,
          );
          if (pickedImage != null) {
            final croppedImage = await ImageCropperUtils.cropImage(
              pickedImage.path,
            );
            if (croppedImage != null) {
              emit(state.copyWith(imageFile: File(croppedImage.path)));
            }
          }
        },
        fetchCategoryList: (e) {
          final categoryMap = e.categories.map((e) => e).toList();
          emit(
            state.copyWith(
              state: RequestState.empty,
              categoryList:
                  categoryMap.map((e) => CheckBoxState(category: e)).toList(),
            ),
          );
        },
        createArticlePressed: (e) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              isSubmitting: true,
            ),
          );
          final selected =
              state.categoryList.where((e) => e.value == true).toList();

          final selectedCategory =
              selected.map((e) => '"${e.category.id}"').toList();

          if (state.imageFile != null) {
            final result = await create.execute(
              title: state.title,
              content: state.content,
              image: state.imageFile!,
              categories: selectedCategory,
            );

            result.fold(
              (f) => emit(
                state.copyWith(
                  state: RequestState.error,
                  isSubmitting: false,
                  message: f.message,
                ),
              ),
              (_) => emit(
                state.copyWith(
                  state: RequestState.loaded,
                  isSubmitting: true,
                ),
              ),
            );
          }
        },
        updateArticlePressed: (e) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              isSubmitting: true,
            ),
          );
          final selected =
              state.categoryList.where((e) => e.value == true).toList();

          final selectedCategory =
              selected.map((e) => '"${e.category.id}"').toList();

          final result = await update.execute(
            id: state.articleId,
            title: state.title,
            content: state.content,
            imageFile: state.imageFile,
            categories: selectedCategory,
          );

          result.fold(
            (f) => emit(
              state.copyWith(
                state: RequestState.error,
                isSubmitting: false,
                message: f.message,
              ),
            ),
            (_) => emit(
              state.copyWith(
                state: RequestState.loaded,
                isSubmitting: true,
              ),
            ),
          );
        },
      );
    });
  }
  final CreateArticle create;
  final UpdateArticle update;
}
