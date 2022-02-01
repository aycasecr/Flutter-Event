import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/image_constants.dart';
import '../../../../core/init/language/locale_keys.g.dart';
import '../../../widgets/custom_button_widget.dart';

class LoginOptionButtons extends StatelessWidget {
  const LoginOptionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LoginOptionsButton(
            title: LocaleKeys.signInWithGoogle.tr(), imgPath: ImageConstants.instance.svgAssets.iconGoogleLogo),
        LoginOptionsButton(
            title: LocaleKeys.signInWithFacebook.tr(), imgPath: ImageConstants.instance.svgAssets.iconFacebookLogo),
      ],
    );
  }
}

class LoginOptionsButton extends StatelessWidget {
  const LoginOptionsButton({
    Key? key,
    required this.title,
    required this.imgPath,
  }) : super(key: key);
  final String title;
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title: title,
      callBackFunction: () {},
      imagePath: imgPath,
    );
  }
}
