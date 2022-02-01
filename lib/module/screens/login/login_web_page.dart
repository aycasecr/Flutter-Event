// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_day_with_karaca/module/screens/login/widgets/have_account_text_widget.dart';
import 'package:mobile_day_with_karaca/module/screens/login/widgets/login_button_widget.dart';
import 'package:mobile_day_with_karaca/module/screens/login/widgets/login_options_button_widget.dart';
import 'package:mobile_day_with_karaca/module/screens/login/widgets/login_options_text_widget.dart';

import '../../../core/constants/image_constants.dart';
import '../../../core/init/utility/padding_utils.dart';
import 'widgets/login_form_field_widget.dart';
import 'widgets/remember_forgot_password.dart';

class LoginWebPage extends StatefulWidget {
  const LoginWebPage({Key? key}) : super(key: key);

  @override
  _LoginWebPageState createState() => _LoginWebPageState();
}

class _LoginWebPageState extends State<LoginWebPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Row(
          children: [firstSection(context), secondSection()],
        ));
  }

  Expanded secondSection() {
    return Expanded(
      flex: 1,
      child: Padding(
          padding: PaddingValue.defaultPadding.rawValue,
          child: SvgPicture.asset(ImageConstants.instance.svgAssets.adaptiveDesingLogo)),
    );
  }

  Expanded firstSection(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryVariant,
            borderRadius: const BorderRadius.only(topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0))),
        child: firstSectionContent(context),
      ),
    );
  }

  Padding firstSectionContent(BuildContext context) {
    return Padding(
      padding: PaddingValue.mediumPadding.rawValue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 15),
          Expanded(flex: 20, child: Image.asset(ImageConstants.instance.pngAssets.marsLogo)),
          const Spacer(flex: 5),
          const Expanded(flex: 22, child: LoginFormField()),
          const Spacer(flex: 2),
          const Expanded(flex: 4, child: RememberAndForgotPassword()),
          const Spacer(flex: 6),
          Expanded(flex: 7, child: LoginButton()),
          const Spacer(flex: 3),
          Expanded(flex: 2, child: LoginOptionsText()),
          const Spacer(flex: 3),
          Expanded(flex: 7, child: LoginOptionButtons()),
          const Spacer(flex: 1),
          Expanded(flex: 5, child: HaveAccount()),
          const Spacer(flex: 15),
        ],
      ),
    );
  }
}
