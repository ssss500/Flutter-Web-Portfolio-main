
import '../utils/constants.dart';
import 'link.dart';

class ProjectModel {
  // final String project;
  final String title;
  final String description;
  final String appPhotos;
  final String androidLink;
  final String appleLink;
  final String githubLink;
  List<LinkModel>? links = [];

  // final String? buttonText;

  ProjectModel({
    // required this.project,
    required this.title,
    required this.description,
    required this.appPhotos,
    required this.androidLink,
    required this.appleLink,
    required this.githubLink,
    // required this.techUsed,
    // this.buttonText,
    this.links,
  });

  static List<ProjectModel> projects = [
    // ProjectModel(
    //   // project: "Flutter App",
    //   title: "Hany Alnashar _ هاني النشار",
    //   description:
    //   "The program for the teacher named Hany Alnasher, which is a special program for a secondary teacher to help students provide explanations and submit monthly and weekly exams with the possibility of repetition and display the answer form, and provide a bank of questions for the subject for students to test themselves, there are summaries of the material, and attendance is recorded through the teacher’s control panel.",
    //   appPhotos: AppConstants.hanyAlnshar,
    //   androidLink:
    //   "https://play.google.com/store/apps/details?id=com.saif.hany_al_nashar_st",
    //   appleLink:
    //   "https://apps.apple.com/eg/app/hany-alnashar-%D9%87%D8%A7%D9%86%D9%8A-%D8%A7%D9%84%D9%86%D8%B4%D8%A7%D8%B1/id6443819912",
    //   githubLink: "",
    // ),
    // ProjectModel(
    //   title: "Hany Alnashar _ هاني النشار",
    //   description:
    //   "The program for the teacher named Hany Alnasher, which is a special program for a secondary teacher to help students provide explanations and submit monthly and weekly exams with the possibility of repetition and display the answer form, and provide a bank of questions for the subject for students to test themselves, there are summaries of the material, and attendance is recorded through the teacher’s control panel.",
    //   appPhotos: AppConstants.hanyAlnshar,
    //   androidLink:
    //   "https://play.google.com/store/apps/details?id=com.saif.hany_al_nashar_st",
    //   appleLink:
    //   "https://apps.apple.com/eg/app/hany-alnashar-%D9%87%D8%A7%D9%86%D9%8A-%D8%A7%D9%84%D9%86%D8%B4%D8%A7%D8%B1/id6443819912",
    //   githubLink: "",
    // ),
    // ProjectModel(
    //   // project: "Flutter App",
    //   title: "Hany Alnashar _ هاني النشار",
    //   description:
    //   "The program for the teacher named Hany Alnasher, which is a special program for a secondary teacher to help students provide explanations and submit monthly and weekly exams with the possibility of repetition and display the answer form, and provide a bank of questions for the subject for students to test themselves, there are summaries of the material, and attendance is recorded through the teacher’s control panel.",
    //   appPhotos: AppConstants.hanyAlnshar,
    //   androidLink:
    //   "https://play.google.com/store/apps/details?id=com.saif.hany_al_nashar_st",
    //   appleLink:
    //   "https://apps.apple.com/eg/app/hany-alnashar-%D9%87%D8%A7%D9%86%D9%8A-%D8%A7%D9%84%D9%86%D8%B4%D8%A7%D8%B1/id6443819912",
    //   githubLink: "",
    //
    //   // buttonText: "Github Link",
    // ),
    ProjectModel(
      // project: "Flutter App",
      title: "Hany Alnashar _ هاني النشار",
      description:
      "The program for the teacher named Hany Alnasher, which is a special program for a secondary teacher to help students provide explanations and submit monthly and weekly exams with the possibility of repetition and display the answer form, and provide a bank of questions for the subject for students to test themselves, there are summaries of the material, and attendance is recorded through the teacher’s control panel.",
      appPhotos: AppConstants.hanyAlnshar,
      androidLink:
      "https://play.google.com/store/apps/details?id=com.saif.hany_al_nashar_st",
      appleLink:
      "https://apps.apple.com/eg/app/hany-alnashar-%D9%87%D8%A7%D9%86%D9%8A-%D8%A7%D9%84%D9%86%D8%B4%D8%A7%D8%B1/id6443819912",
      githubLink: "",

      // buttonText: "Github Link",
    ),
    ProjectModel(
      // project: "Flutter App",
      title: "Edulens Educational",
      description:
          "The Edulens platform program, which is a program to fully link between the teacher and the student to provide educational content remotely and to provide tests and summaries of the educational curricula at all academic levels",
      appPhotos: AppConstants.edulens,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.edulens.edulens&fbclid=IwAR1FR_7qzsGPQwkvGGZKD7yIUXgGNNtFqT7OT8FEeOEalEa8sFY0NIWQCmQ",
      appleLink: "https://apps.apple.com/eg/app/edulens/id1666623278",
      githubLink: "",
    ),

    // ProjectModel(
    //   title: "Sherif AlBoghdady _ شريف البغدادي",
    //   description:
    //       "The teacher program named Sharif Al-Baghdadi, which is a special program for a secondary teacher to help students present the explanation, submit monthly and weekly exams with the possibility of repetition and display the answer form, and provide a bank of questions for the subject for students to test themselves, there are summaries of the material, and attendance is recorded through the teacher’s control panel.",
    //   appPhotos: AppConstants.smartStoreImage,
    //   androidLink: "https://play.google.com/store/apps/details?id=com.sharif_al_baghdadi.saif",
    //   appleLink: "https://apps.apple.com/app/%D8%B4%D8%B1%D9%8A%D9%81-%D8%A7%D9%84%D8%A8%D8%BA%D8%AF%D8%A7%D8%AF%D9%8A-sherif-elboghdad/id1639825956",
    //   githubLink: "",
    //
    //   // buttonText: "Github Link",
    // ),
    ProjectModel(
      // project: "Flutter App",
      title: "Sherif AlBoghdady _ شريف البغدادي",
      description:
          "The teacher program named Sharif Al-Baghdadi, which is a special program for a secondary teacher to help students present the explanation, submit monthly and weekly exams with the possibility of repetition and display the answer form, and provide a bank of questions for the subject for students to test themselves, there are summaries of the material, and attendance is recorded through the teacher’s control panel.",
      appPhotos: AppConstants.smartStoreImage,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.sharif_al_baghdadi.saif",
      appleLink:
          "https://apps.apple.com/app/%D8%B4%D8%B1%D9%8A%D9%81-%D8%A7%D9%84%D8%A8%D8%BA%D8%AF%D8%A7%D8%AF%D9%8A-sherif-elboghdad/id1639825956",
      githubLink: "",

      // buttonText: "Github Link",
    ),
    ProjectModel(
      // project: "Swift App",
      title: "Negm El-Deen نجم الدين ـ",
      description:
          "The teacher program named Negm El-Deen, which is a special program for a secondary teacher to help students present the explanation, submit monthly and weekly exams with the possibility of repetition and display the answer form, and provide a bank of questions for the subject for students to test themselves, there are summaries of the material, and attendance is recorded through the teacher’s control panel.",
      appPhotos: AppConstants.crossTheRoadImage,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.saif.negm_el_deen_st",
      appleLink: "https://apps.apple.com/app/id1631515273",
      githubLink: "",
    ),
    ProjectModel(
      // project: "Flutter App",
      title: "smart parking",
      description:
          "It is the last project that I created, which was a graduation project for one of the students. \n An idea that the user registers with and knows the nearest private garage in which the car can be parked, the price of the hour, the vacant spaces in the garage, and the ability to open the gate from the program. There are illustrative pictures in detail.",
      appPhotos: AppConstants.newsUpImage,
      androidLink: "",
      appleLink: "",
      githubLink: "https://github.com/ssss500/smart_parking1",
    ),
    ProjectModel(
      title: "Go whats",
      description:
          "The first program I uploaded to Google Play helps you send any message to a number on WhatsApp without having to register its phone number.",
      appPhotos: AppConstants.musicLabImage,
      androidLink: "https://play.google.com/store/apps/details?id=kh.whatapp",
      appleLink: "",
      githubLink: "",
    ),

    ProjectModel(
      // project: "Python",
      title: "Wallpaper",
      description:
          "The second program that was uploaded to me is a program that contains images from the pexels website that helps you to download the image and make it a background for your screen.",
      appPhotos: AppConstants.personalFaceImage,
      androidLink:
          "https://play.google.com/store/apps/details?id=co.jugjot.photoapp",
      appleLink: "",
      githubLink: "",
    ),
  ];

  static List<ProjectModel> demos = [
    ProjectModel(
      // project: "Flutter App",
      title: "Flutter Web Portfolio",
      description: "",
      appPhotos: AppConstants.portfolioGif,
      androidLink: "https://www.amazon.com/gp/product/B08WL2XFGW",
      appleLink: "https://www.amazon.com/gp/product/B08WL2XFGW",
      githubLink: "https://www.amazon.com/gp/product/B08WL2XFGW",
      // buttonText: "Github Link",
    ),
  ];
}
