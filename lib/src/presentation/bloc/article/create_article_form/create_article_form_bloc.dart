import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/entities/article_detail.dart';
import 'package:kumparan_clone/src/domain/entities/category.dart';
import 'package:kumparan_clone/src/domain/entities/checkbox_state.dart';
import 'package:kumparan_clone/src/domain/usecases/article/create_article.dart';
import 'package:kumparan_clone/src/utilities/image_cropper_utils.dart';

part 'create_article_form_event.dart';
part 'create_article_form_state.dart';
part 'create_article_form_bloc.freezed.dart';

class CreateArticleFormBloc
    extends Bloc<CreateArticleFormEvent, CreateArticleFormState> {
  CreateArticleFormBloc(this._createArticle)
      : super(CreateArticleFormState.initial()) {
    on<CreateArticleFormEvent>((event, emit) async {
      await event.map(
        initial: (_) {
          emit(CreateArticleFormState.initial());
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
          emit(
            state.copyWith(
              state: RequestState.empty,
              message: '',
              thumbnailFile: null,
              isSubmitting: false,
              title: event.article.title,
              content: event.article.content,
              imageUrl: event.article.thumbnail,
            ),
          );

          // state.categoryList.firstWhere((e) {
          //   return e.category.id == categoryId
          //       ? e.value = true
          //       : e.value = false;
          // });
        },
        titleOnChanged: (e) {
          emit(state.copyWith(title: e.val));
        },
        contentOnChanged: (e) {
          emit(state.copyWith(content: e.val));
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
              emit(state.copyWith(thumbnailFile: File(croppedImage.path)));
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

          if (state.thumbnailFile != null) {
            final result = await _createArticle.execute(
              title: state.title,
              content: state.content,
              thumbnail: state.thumbnailFile!,
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
      );
    });
  }
  final CreateArticle _createArticle;
}
