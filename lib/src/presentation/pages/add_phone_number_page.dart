import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/presentation/bloc/phone_number/phone_number_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/outlined_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';
import 'package:kumparan_clone/src/utilities/toast.dart';

class AddPhoneNumberPage extends StatelessWidget {
  const AddPhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: BlocBuilder<PhoneNumberFormBloc, PhoneNumberFormState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const SizedBox(height: SPACE25),
                  Text(
                    lang.add_and_verify_your_phone_number_to_be_able_to_log_in_with_your_phone_number,
                    style: theme.textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: SPACE50),
                  Row(
                    children: [
                      SvgPicture.asset(
                        CustomIcons.indonesia_flag,
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: SPACE8),
                      Text(
                        '+62',
                        style: theme.textTheme.bodyText1,
                      ),
                      const SizedBox(width: SPACE15),
                      Expanded(
                        child: TextFormFieldWidget(
                          hintText: lang.phone_number,
                          textFieldType: TextFieldType.phoneNumber,
                          textInputType: TextInputType.phone,
                          onChanged: (value) =>
                              context.read<PhoneNumberFormBloc>().add(
                                    PhoneNumberFormEvent.phoneNumberOnChanged(
                                      value,
                                    ),
                                  ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: SPACE25),
                  ElevatedButtonWidget(
                    onTap: () {
                      if (!formKey.currentState!.validate()) {
                      } else {
                        _showAlertDialog(
                          context,
                          phoneNumber: state.phoneNumber,
                        );
                      }
                    },
                    label: lang.save,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<dynamic> _showAlertDialog(
    BuildContext context, {
    required String phoneNumber,
  }) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return showDialog<dynamic>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RADIUS),
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
                      lang.change_number,
                      style: theme.textTheme.headline1,
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(FeatherIcons.x),
                    ),
                  ],
                ),
                const SizedBox(height: SPACE15),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: lang
                            .are_you_sure_you_want_to_change_the_backup_email_to,
                        style: theme.textTheme.bodyText2,
                      ),
                      TextSpan(
                        text: ' $phoneNumber?',
                        style: theme.textTheme.headline4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            OutlinedButtonWidget(
              width: 100,
              height: 45,
              onTap: () {
                Navigator.pop(context);
              },
              label: lang.no,
            ),
            ElevatedButtonWidget(
              width: 100,
              height: 45,
              onTap: () {
                showToast(
                  msg: lang.code_verification_has_been_sent,
                  gravity: ToastGravity.BOTTOM,
                );
                Navigator.pop(context);
              },
              label: lang.yes,
            ),
          ],
        );
      },
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
        lang.phone_number,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
