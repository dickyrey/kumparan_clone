import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:kumparan_clone/src/common/const.dart';

enum TextFieldType { alphabet, email, text, password, phoneNumber, number }

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final TextFieldType textFieldType;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final int? maxLines;
  final int? helperMaxLines;
  final int? maxLength;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int minLength;

  const TextFormFieldWidget({
    super.key,
    this.controller,
    this.textFieldType = TextFieldType.text,
    this.hintText,
    this.helperText,
    this.onChanged,
    this.maxLength,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.maxLines = 1,
    this.helperMaxLines,
    this.textAlign = TextAlign.left,
    this.inputFormatters,
    this.enabled = true,
    this.textInputAction,
    this.textInputType,
    this.minLength = 1,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    TextInputType keyboardType(TextFieldType textFieldType) {
      switch (textFieldType) {
        case TextFieldType.alphabet:
          return TextInputType.text;
        case TextFieldType.email:
          return TextInputType.emailAddress;
        case TextFieldType.number:
          return TextInputType.number;
        case TextFieldType.password:
          return TextInputType.text;
        case TextFieldType.phoneNumber:
          return TextInputType.phone;
        case TextFieldType.text:
          return TextInputType.text;
      }
    }

    MultiValidator validatorOption(
      TextFieldType textFieldType, {
      String? errorText,
    }) {
      switch (textFieldType) {
        case TextFieldType.alphabet:
          return MultiValidator([
            RequiredValidator(
              errorText: errorText ??
                  AppLocalizations.of(context)!.please_enter_the_value,
            ),
            PatternValidator(
              r'^[A-Za-z_ .,]+$',
              errorText:
                  AppLocalizations.of(context)!.only_alphabets_are_allowed,
            ),
          ]);
        case TextFieldType.email:
          return MultiValidator([
            RequiredValidator(
              errorText: errorText ??
                  AppLocalizations.of(context)!.please_enter_your_email_address,
            ),
            EmailValidator(
              errorText:
                  AppLocalizations.of(context)!.invalid_email_address_format,
            )
          ]);
        case TextFieldType.number:
          return MultiValidator([
            RequiredValidator(
              errorText: errorText ??
                  AppLocalizations.of(context)!.please_enter_the_value,
            ),
            MinLengthValidator(
              1,
              errorText: AppLocalizations.of(context)!.data_is_too_short,
            ),
            PatternValidator(
              r'^[0-9]+$',
              errorText: AppLocalizations.of(context)!.you_can_only_use_numbers,
            ),
          ]);
        case TextFieldType.password:
          return MultiValidator([
            RequiredValidator(
              errorText: errorText ??
                  AppLocalizations.of(context)!.please_enter_your_password,
            ),
            MinLengthValidator(
              8,
              errorText:
                  AppLocalizations.of(context)!.must_be_more_than_8_characters,
            )
          ]);
        case TextFieldType.phoneNumber:
          return MultiValidator([
            RequiredValidator(
              errorText: errorText ??
                  AppLocalizations.of(context)!.please_enter_your_phone_number,
            ),
            MinLengthValidator(
              7,
              errorText:
                  AppLocalizations.of(context)!.invalid_phone_number_format,
            ),
            PatternValidator(
              r'^[0-9]+$',
              errorText:
                  AppLocalizations.of(context)!.invalid_phone_number_format,
            ),
          ]);
        case TextFieldType.text:
          return MultiValidator([
            RequiredValidator(
              errorText: errorText ??
                  AppLocalizations.of(context)!.please_enter_the_value,
            ),
            MinLengthValidator(
              minLength,
              errorText: AppLocalizations.of(context)!.data_is_too_short,
            ),
          ]);
      }
    }

    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      maxLength: maxLength,
      autofocus: false,
      enabled: enabled,
      onChanged: onChanged,
      textAlign: textAlign ?? TextAlign.left,
      obscureText: obscureText ?? false,
      style: theme.textTheme.bodyText1,
      inputFormatters: inputFormatters ?? [],
      keyboardType: textInputType ?? keyboardType(textFieldType),
      validator: validatorOption(textFieldType, errorText: errorText),
      textInputAction: textInputAction,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: theme.textTheme.subtitle2,
        labelText: labelText,
        labelStyle: theme.textTheme.subtitle1,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        helperMaxLines: helperMaxLines,
        helperText: helperText,
        helperStyle: theme.textTheme.subtitle2?.copyWith(fontSize: 10),
        contentPadding: const EdgeInsets.symmetric(horizontal: Const.space12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Const.radius),
          borderSide: BorderSide(color: theme.disabledColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Const.radius),
          borderSide: BorderSide(color: theme.primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Const.radius),
          borderSide: BorderSide(color: theme.errorColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Const.radius),
          borderSide: BorderSide(color: theme.errorColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Const.radius),
          borderSide: BorderSide(color: theme.disabledColor),
        ),
      ),
    );
  }
}
