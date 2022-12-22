import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:kumparan_clone/src/common/colors.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/screens.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';
import 'package:octo_image/octo_image.dart';

class ChangeProfilePage extends StatefulWidget {
  const ChangeProfilePage({super.key});

  @override
  State<ChangeProfilePage> createState() => _ChangeProfilePageState();
}

class _ChangeProfilePageState extends State<ChangeProfilePage> {
  TextEditingController? _dateController;
  int _selectedRadio = 0;
  DateTime? _selectedDate;

  void _handleRadioValueChanged(int? value) {
    setState(() {
      _selectedRadio = value ?? _selectedRadio;
      _dateController?.text = _selectedDate.toString();
    });
  }

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1945),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() => _selectedDate = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    final dateFormat = DateFormat('dd/MM/yyyy');
    final formattedDate = dateFormat.format(_selectedDate ?? DateTime.now());
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _headerProfile(
              context,
              image:
                  'https://i.pinimg.com/564x/2b/54/5a/2b545ae586764da77f5717d8406d0910.jpg',
              header:
                  'https://i.pinimg.com/564x/9a/84/7c/9a847c55b9f72027d97ea310d662e253.jpg',
            ),
            const SizedBox(height: SPACE15),
            ElevatedButtonWidget(
              width: 200,
              height: 35,
              onTap: () {},
              label: lang.upload_profile_photo,
            ),
            const SizedBox(height: SPACE15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: MARGIN),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lang.name,
                    style: theme.textTheme.headline3,
                  ),
                  const SizedBox(height: SPACE8),
                  TextFormFieldWidget(
                    hintText: '',
                    maxLength: 60,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: SPACE12),
                  Text(
                    lang.biography,
                    style: theme.textTheme.headline3,
                  ),
                  const SizedBox(height: SPACE8),
                  TextFormFieldWidget(
                    hintText: lang
                        .please_fill_in_according_to_your_current_activities_and_profession,
                    maxLength: 250,
                    maxLines: 5,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: SPACE12),
                  Text(
                    lang.website_or_social_media,
                    style: theme.textTheme.headline3,
                  ),
                  const SizedBox(height: SPACE8),
                  TextFormFieldWidget(
                    hintText: lang.example_kumparan_dot_com,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: SPACE12),
                  Text(
                    lang.gender,
                    style: theme.textTheme.headline3,
                  ),
                  Text(
                    lang.not_shown_on_your_profile,
                    style: theme.textTheme.subtitle2,
                  ),
                  const SizedBox(height: SPACE8),
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: _selectedRadio,
                        onChanged: _handleRadioValueChanged,
                      ),
                      const SizedBox(width: SPACE12),
                      Text(
                        lang.male,
                        style: theme.textTheme.bodyText2,
                      ),
                      const SizedBox(width: SPACE15),
                      Radio(
                        value: 1,
                        groupValue: _selectedRadio,
                        onChanged: _handleRadioValueChanged,
                      ),
                      const SizedBox(width: SPACE12),
                      Text(
                        lang.female,
                        style: theme.textTheme.bodyText2,
                      ),
                    ],
                  ),
                  const SizedBox(height: SPACE12),
                  Text(
                    lang.date_of_birth,
                    style: theme.textTheme.headline3,
                  ),
                  Text(
                    lang.not_shown_on_your_profile,
                    style: theme.textTheme.subtitle2,
                  ),
                  const SizedBox(height: SPACE8),
                  InkWell(
                    onTap: _selectDate,
                    child: Container(
                      width: Screens.width(context),
                      height: 45,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: SPACE12),
                      decoration: BoxDecoration(
                        border: Border.all(color: theme.disabledColor),
                        borderRadius: BorderRadius.circular(RADIUS),
                      ),
                      child: Text(
                        (_selectedDate != null)
                            ? formattedDate
                            : lang.example_date,
                        style: theme.textTheme.subtitle1?.copyWith(
                          color: (_selectedDate != null)
                              ? ColorLight.fontTitle
                              : ColorLight.fontSubtitle,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: SPACE25),
                  ElevatedButtonWidget(
                    onTap: () {},
                    label: lang.save_changes,
                  ),
                  const SizedBox(height: SPACE25),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _headerProfile(
    BuildContext context, {
    required String image,
    required String header,
  }) {
    final lang = AppLocalizations.of(context)!;

    return SizedBox(
      width: Screens.width(context),
      height: 250,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 50,
            child: OctoImage(
              image: CachedNetworkImageProvider(header),
              height: 200,
              width: Screens.width(context),
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned.fill(
            bottom: 100,
            child: Center(
              child: ElevatedButtonWidget(
                width: 250,
                height: 40,
                onTap: () {},
                label: lang.upload_a_cover_image,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(image),
                ),
              ),
            ),
          ),
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
      title: Text(
        lang.change_profile,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
