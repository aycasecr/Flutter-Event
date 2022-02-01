class ImageConstants {
  static ImageConstants? _instace;
  static ImageConstants get instance {
    _instace ??= ImageConstants._init();
    return _instace!;
  }

  ImageConstants._init();

  final _SVG svgAssets = _SVG();
  final _PNG pngAssets = _PNG();
}

class _SVG {
  final String iconGoogleLogo = 'icon_google_logo'.toSVG;
  final String iconFacebookLogo = 'icon_facebook_logo.svg'.toSVG;
  final String adaptiveDesingLogo = 'adaptive_design_logo'.toSVG;
}

class _PNG {
  final String marsLogo = 'fluttermars_logo'.toPNG;
}

extension _ImageConstantsExtension on String {
  String get toPNG => 'assets/images/Png/$this.png';
  String get toJPEG => 'assets/$this.jpeg';
  String get toJSON => 'assets/$this.json';
  String get toSVG => 'assets/images/Svg/$this.svg';
}
