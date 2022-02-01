import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/init/language/locale_keys.g.dart';
import '../../../../core/init/utility/border_radius_utils.dart';
import '../../../widgets/text_widget.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextWidget(
          text: LocaleKeys.haveAccount.tr(),
          styles: getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
              ? Theme.of(context).textTheme.bodyText1
              : Theme.of(context).textTheme.headline3,
        ),
        SizedBox(width: Sizes.five.rawValue()),
        InkWell(
            child: CustomTextWidget(
                text: LocaleKeys.register.tr(),
                styles: getValueForScreenType<bool>(
                        context: context, mobile: false, tablet: true, desktop: true, watch: true)
                    ? Theme.of(context).textTheme.headline6
                    : Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight: FontWeight.bold)))
      ],
    );
  }
}
