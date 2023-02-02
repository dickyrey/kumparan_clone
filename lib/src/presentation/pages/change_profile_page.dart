import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/bloc/user/user_form/user_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';

class ChangeProfilePage extends StatelessWidget {
  const ChangeProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: BlocBuilder<UserFormBloc, UserFormState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: Const.space25),
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: (state.photoProfileFile == null)
                        ? const CircleAvatar(
                            backgroundImage: CachedNetworkImageProvider(
                                'https://i.pinimg.com/564x/2b/54/5a/2b545ae586764da77f5717d8406d0910.jpg'),
                          )
                        : CircleAvatar(
                            backgroundImage: FileImage(state.photoProfileFile!),
                          ),
                  ),
                ),
                const SizedBox(height: Const.space15),
                ElevatedButtonWidget(
                  width: 200,
                  height: 35,
                  onTap: () {
                    _openUploadImageDialog(
                      context,
                      isHeader: false,
                    );
                  },
                  label: lang.upload_profile_photo,
                ),
                const SizedBox(height: Const.space15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Const.margin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lang.name,
                        style: theme.textTheme.headlineSmall,
                      ),
                      const SizedBox(height: Const.space8),
                      TextFormFieldWidget(
                        hintText: lang.name,
                        maxLength: 60,
                        onChanged: (value) {
                          context
                              .read<UserFormBloc>()
                              .add(UserFormEvent.nameOnChanged(value));
                        },
                      ),
                      const SizedBox(height: Const.space12),
                      ElevatedButtonWidget(
                        onTap: () {
                          context
                              .read<UserFormBloc>()
                              .add(const UserFormEvent.saveChanges());
                        },
                        label: lang.save_changes,
                      ),
                      const SizedBox(height: Const.space25),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Future<dynamic> _openUploadImageDialog(
    BuildContext context, {
    required bool isHeader,
  }) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return showDialog<dynamic>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Const.radius),
          ),
          content: Container(
            width: 300,
            height: 200,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      lang.upload_image,
                      style: theme.textTheme.headlineLarge,
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(FeatherIcons.x),
                    ),
                  ],
                ),
                const SizedBox(height: Const.space15),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (isHeader == true) {
                      context.read<UserFormBloc>().add(
                            const UserFormEvent.pickPhotoHeader(
                              ImageSource.camera,
                            ),
                          );
                    } else {
                      context.read<UserFormBloc>().add(
                            const UserFormEvent.pickPhotoProfile(
                              ImageSource.camera,
                            ),
                          );
                    }
                  },
                  child: Text(
                    '${lang.take_photo}...',
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (isHeader == true) {
                      context.read<UserFormBloc>().add(
                            const UserFormEvent.pickPhotoHeader(
                              ImageSource.gallery,
                            ),
                          );
                    } else {
                      context.read<UserFormBloc>().add(
                            const UserFormEvent.pickPhotoProfile(
                              ImageSource.gallery,
                            ),
                          );
                    }
                  },
                  child: Text(
                    '${lang.choose_from_library}...',
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        );
      },
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
        lang.change_profile,
        style: theme.textTheme.headlineSmall,
      ),
    );
  }
}
