import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/widgets/elevated_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/outlined_button_widget.dart';
import 'package:kumparan_clone/src/presentation/widgets/text_form_field_widget.dart';

class DeleteAccountPage extends StatefulWidget {
  const DeleteAccountPage({super.key});

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPageState();
}

class _DeleteAccountPageState extends State<DeleteAccountPage> {
  int _selectedRadio = 0;

  void _handleRadioValueChanged(int? value) {
    setState(() {
      _selectedRadio = value ?? _selectedRadio;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(Const.margin),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Apakah kamu yakin akan menghapus akun kamu?\n\n',
                      style: theme.textTheme.headline3,
                    ),
                    TextSpan(
                      text:
                          'Menghapus akun akan menyebabkan semua histori termasuk profil, konten, keterbacaan serta komentar akan hilang dan tidak dapat dikembalikan.\n\nBeberapa informasi dari akun kamu yang sudah ada di website atau platform lain di luar, mungkin tidak akan mengalami perubahan meskipun kamu telah menyelesaikan proses penghapusan akun.\n\nUntuk informasi lebih lengkap, kamu dapat membaca ',
                      style: theme.textTheme.bodyText1,
                    ),
                    TextSpan(
                      text: 'Ketentuan dan Kebijakan Privasi',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(color: theme.primaryColor),
                    ),
                    TextSpan(
                      text: ' atau kamu dapat menghubungi: ',
                      style: theme.textTheme.bodyText1,
                    ),
                    TextSpan(
                      text: 'collaboration.team@kumparan.com',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(color: theme.primaryColor),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            const SizedBox(height: Const.margin),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Text(
                'Alasan menghapus akun',
                style: theme.textTheme.headline3,
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: Const.space15),
            _radioButton(
              context,
              value: 0,
              label: 'Saya memiliki akun lain di Kumparan',
            ),
            const SizedBox(height: Const.space8),
            _radioButton(
              context,
              value: 1,
              label: 'Saya tidak mengerti bagaimana menggunakan Kumparan',
            ),
            const SizedBox(height: Const.space8),
            _radioButton(
              context,
              value: 2,
              label: 'Saya tidak merasa aman di Kumparan',
            ),
            const SizedBox(height: Const.space8),
            _radioButton(
              context,
              value: 3,
              label: 'Saya tidak ingin ada jejak digital di Kumparan',
            ),
            const SizedBox(height: Const.space8),
            _radioButton(
              context,
              value: 4,
              label: 'Saya mendapatkan banyak email dan undangan',
            ),
            const SizedBox(height: Const.space8),
            _radioButton(
              context,
              value: 5,
              label: 'Saya menggunakan platform menulis yang lain',
            ),
            const SizedBox(height: Const.space8),
            _radioButton(context, value: 6, label: 'Alasan lainnya'),
            const SizedBox(height: Const.space8),
            if (_selectedRadio == 6)
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: Const.margin),
                child: TextFormFieldWidget(
                  hintText: 'Tulis alasan anda',
                  maxLength: 160,
                  maxLines: 5,
                ),
              )
            else
              const SizedBox(),
            const SizedBox(height: Const.space25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButtonWidget(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      label: lang.cancel,
                    ),
                  ),
                  const SizedBox(width: Const.space25),
                  Expanded(
                    child: ElevatedButtonWidget(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          INTEREST,
                          (route) => false,
                        );
                      },
                      label: lang.delete_account,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: Const.space25),
          ],
        ),
      ),
    );
  }

  Widget _radioButton(
    BuildContext context, {
    required int value,
    required String label,
  }) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Radio(
          value: value,
          groupValue: _selectedRadio,
          onChanged: _handleRadioValueChanged,
        ),
        const SizedBox(width: Const.space12),
        Expanded(
          child: Text(
            label,
            style: theme.textTheme.bodyText1,
          ),
        ),
        const SizedBox(width: Const.margin),
      ],
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
        lang.delete_account,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
