import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../core/init/utility/border_radius_utils.dart';
import 'text_widget.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final Function callBackFunction;
  final String? imagePath;
  const CustomButton({Key? key, required this.title, required this.callBackFunction, this.imagePath}) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
          ? 120
          : 180,
      child: ElevatedButton(
        onPressed: () => widget.callBackFunction(),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.surface)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(widget.imagePath ?? '', height: 15, width: 15),
            SizedBox(width: Sizes.five.rawValue()),
            CustomTextWidget(
              text: widget.title,
              styles:
                  getValueForScreenType<bool>(context: context, mobile: false, tablet: true, desktop: true, watch: true)
                      ? Theme.of(context).textTheme.headline6
                      : Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
