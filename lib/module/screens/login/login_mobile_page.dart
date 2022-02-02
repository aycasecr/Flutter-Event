import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/constants/image_constants.dart';
import '../../../core/init/language/locale_keys.g.dart';
import '../../../core/init/utility/circular_border_radius.dart';
import '../../../core/init/utility/padding_utils.dart';
import '../../widgets/text_widget.dart';
import 'widgets/have_account_text_widget.dart';
import 'widgets/login_button_widget.dart';
import 'widgets/login_form_field_widget.dart';
import 'widgets/login_options_button_widget.dart';
import 'widgets/login_options_text_widget.dart';
import 'widgets/remember_forgot_password.dart';

class LoginMobilePage extends StatefulWidget {
  const LoginMobilePage({Key? key}) : super(key: key);

  @override
  _LoginMobilePageState createState() => _LoginMobilePageState();
}

class _LoginMobilePageState extends State<LoginMobilePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingValue.pagePadding.rawValue,
        child: Column(
          children: [
            const Spacer(flex: 22),
            if (!context.isKeyBoardOpen)
              Expanded(flex: 30, child: Image.asset(ImageConstants.instance.pngAssets.marsLogo)),
            const Spacer(flex: 5),
            const LoginFormField(),
            const Spacer(flex: 2),
            const Expanded(flex: 3, child: RememberAndForgotPassword()),
            const Spacer(flex: 4),
            const Expanded(flex: 6, child: LoginButton()),
            const Spacer(flex: 2),
            const Expanded(flex: 3, child: LoginOptionsText()),
            const Spacer(flex: 2),
            const Expanded(flex: 7, child: LoginOptionButtons()),
            const Spacer(flex: 1),
            const Expanded(flex: 3, child: HaveAccount()),
            const Spacer(flex: 18),
          ],
        ),
      ),
    );
  }
}
