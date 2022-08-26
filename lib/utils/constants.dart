import 'package:flutter/material.dart';
import 'package:my_portfolio/models/header_item.dart';
import 'package:my_portfolio/utils/utils.dart';

const Color kPrimaryColor = Color(0xFF7d1c4e);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromARGB(255, 243, 22, 22);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

class AppConstants {
  static const linkedInUrl =
      "https://www.linkedin.com/in/agnel-selvan-328421192/";
  static const instagramUrl = "https://www.instagram.com/_agnel.selvan_/";
  static const githubUrl = "https://github.com/AgnelSelvan";
  static const mediumUrl = "https://medium.com/@agnelselvan";

  static const _assets = "assets/";
  static const _outputs = "outputs/";

  static const _svg = _assets + "svg/";
  static const guySvg = _svg + "guy.svg";
  static const personSvg = "assets/images/myimage.png";

  static const _images = _assets + "images/";

  static const _socialImages = _images + "social/";
  // static const emailImage = _socialImages + "email.png";
  static const linkedInImage = _socialImages + "linkedin.png";
  static const instaImage = _socialImages + "instagram.png";
  static const githubImage = _socialImages + "github.png";
  static const githubButtonImage =_images+ "githubButton.png";
  static const whatsappImage = _socialImages + "whatsapp.png";

  static const _techImages = _images + "technology/";
  static const flutterImage = _techImages + "flutter.png";
  static const pythonImage = _techImages + "python.png";
  static const phpImage = _techImages + "php.png";
  static const flaskImage = _techImages + "flask.png";
  static const firebaseImage = _techImages + "firebase.png";
  static const razorPayImage = _techImages + "razorpay.png";
  static const cPlusImage = _techImages + "c++.png";
  static const swiftImage = _techImages + "swift.png";
  static const sceneKitImage = _techImages + "scenekit.jpeg";
  static const javascriptImage = _techImages + "javascript.png";

  static const _projectsImages = _images + "projects/";
  static const smartStoreImage = _projectsImages + "1.jpeg";
  static const crossTheRoadImage = _projectsImages + "2.jpeg";
  static const newsUpImage = _projectsImages + "3.jpeg";
  static const musicLabImage = _projectsImages + "4.jpeg";
  static const personalFaceImage = _projectsImages + "5.jpeg";
  static const computerStoreImage = _projectsImages + "6.jpeg";

  static const _gifs = _outputs + "gif/";
  static const portfolioGif = _gifs + "mobile.gif";

  static List<NameOnTap> socialLoginDatas = [
    //whats app
    NameOnTap(
        title: whatsappImage,
        onTap: () {
          Utilty.openWhatsapp();
        }),
    NameOnTap(
        title: linkedInImage,
        onTap: () {
          Utilty.openLinkedin();
        }),
    NameOnTap(
        title: instaImage,
        onTap: () {
          Utilty.openInstagram();
        }),
    NameOnTap(
        title: githubImage,
        onTap: () {
          Utilty.openGithub();
        }),

  ];
}
