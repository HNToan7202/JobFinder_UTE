import 'package:jobhub_ute/app/feature/network/presentation/page/user_post_model.dart';
import 'package:jobhub_ute/gen/assets.gen.dart';

import 'user_model.dart';

class Data {
  static final List<UserPostModel> postList = [
    UserPostModel(
        name: "Creative 1",
        profileUrl: Assets.images.profile1.path,
        headline: "HR Executive ",
        tags:
            "#positivity #motivation #learning #progress #development #networking #business #jobhunters #jobseekers #connections #networking #linkedin #nevergiveup #staypositive #staystrong #positiveattitude",
        description:
            "Stay Strong!\n\nKeep Your Head Up!\n\nRejection means a better opportunity awaits you elsewhere.\n\nYour thoughts?",
        isVideoPost: false,
        comments: "100",
        video: "",
        isOnline: false,
        image: Assets.images.post1.path,
        likes: "800"),
    UserPostModel(
        name: "Creative 2",
        profileUrl: Assets.images.profile2.path,
        headline: "MEAN Stack Developer | Freelancer",
        tags: "#independenceday2020",
        description:
            "Without the sweat, toil and sacrifices of our heroes, we wouldn’t have this bright day that we celebrate today. Happy Independence Day.",
        isVideoPost: false,
        comments: "1k",
        video: "",
        isOnline: true,
        image: Assets.images.post2.path,
        likes: "20k"),
    UserPostModel(
        name: "Creative 3",
        profileUrl: Assets.images.profile3.path,
        headline: "Logo Designer | Freelancer |",
        tags: "#datascience #machinelearning #programming #python #joke",
        description: "Google, Stack Overflow are your saviors :)",
        isVideoPost: false,
        comments: "100",
        video: "",
        isOnline: true,
        image: Assets.images.post3.path,
        likes: "230"),
    UserPostModel(
        name: "Creative 4",
        profileUrl: Assets.images.profile4.path,
        headline:
            "LOGO DESIGN 🔹3D LOGO ANIMATION 🔹 DRAW CARTOON 🔹 BUSINESS CARD 🔹 PENCIL SKETCH 🔹 FLYER DESIGN 🔹 BROCHURE DESIGN 🔹",
        tags: "#Respect #SadioMane #PayBack #Love",
        description: "Rate my art work",
        isVideoPost: false,
        comments: "500",
        video: "",
        isOnline: false,
        image: Assets.images.post4.path,
        likes: "10k"),
    UserPostModel(
        name: "Creative 5",
        profileUrl: Assets.images.profile5.path,
        headline: "Creative Content Writer | Content Specialist | Storyteller ",
        tags: "#Respect #SadioMane #PayBack #Love",
        description:
            "The world famous football player Sadio Mane of Senegal (West Africa), whose income in Indian rupees is around Rs. 1 crore 40 lacs per week, was seen in many places with a broken mobile phone. In an interview when asked about it, he said, I'll get it fixed. When asked, Why you are not buying a new one? He said, I could buy thousands of it, 10s Ferraris, couple of Jet Planes, Diamond watches that I can buy, but why do I need all of these? I saw poverty, so I couldn't learn, I built schools so that people could learn, I didn't have shoes, I played without shoes, I didn't have good clothes, I didn't have food. I have so much today that I want to share it with my people instead of showing off.Huge respect for him! We all must spend atleast some portion of our excess incomes in people who are deserving and can't even buy necessities.",
        isVideoPost: false,
        comments: "400",
        video: "videos/flutterIntro.mp4",
        isOnline: false,
        image: Assets.images.post5.path,
        likes: "1.1k"),
    UserPostModel(
        name: "Creative 6",
        profileUrl: Assets.images.profile6.path,
        headline: "Flutter Open Projects | Flutter Drat world",
        tags:
            "#FlutterOpenProject, #FlutterMagicWorld, #Mobile&WebOpenApps, #Flutter+Dart❤️",
        description:
            "Flutter is an open-source mobile application development framework created by Google. It is used to develop applications for Android and iOS, as well as being the primary method of creating applications for Google Fuchsia.",
        isVideoPost: false,
        comments: "20k",
        video: "videos/flutterIntro.mp4",
        isOnline: true,
        image: Assets.images.post6.path,
        likes: "101k"),
  ];
  static final userProfile = UserModel(
      headline:
          "Android & IOS Mobile Application flutter developer | Freelancer",
      profileUrl: Assets.images.profile1.path,
      name: "Amir Khan",
      connections: "1,837",
      viewProfile: "300");
}
