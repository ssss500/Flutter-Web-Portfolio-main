import 'package:url_launcher/url_launcher.dart';

class Utilty {
  static Future<void> openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  static Future<void> openLinkedin() => openUrl("https://www.linkedin.com/in/saif-ahmed-382117196/");

  static Future<void> openInstagram() =>
      openUrl("https://www.instagram.com/saif7947/");
  static Future<void> openGithub() => openUrl("https://github.com/ssss500");
  static Future<void> openWhatsapp() => openUrl("https://wa.me/+201022535966");
}
