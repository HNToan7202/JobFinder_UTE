import 'package:flutter/material.dart';
import 'package:jobhub_ute/app/feature/home/presentation/page/home_page.dart';
import 'package:jobhub_ute/app/feature/home/presentation/page/nav_bar.dart';
import 'package:jobhub_ute/app/feature/login/presentation/page/login_page.dart';
import 'package:jobhub_ute/app/feature/welcome/presentation/page/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../common/btn/btn_default.dart';
import '../../../../../common/color_extension.dart';
import '../../../../../gen/assets.gen.dart';
import '../../data/model/intro_data.dart';
import '../widgets/intro_content.dart';

class IntroBody extends StatefulWidget {
  const IntroBody({Key? key}) : super(key: key);

  @override
  State<IntroBody> createState() => _IntroBodyState();
}

class _IntroBodyState extends State<IntroBody> {
  static const kAnimationDuration = Duration(milliseconds: 200);
  int currentPage = 0;
  List<IntroData> splashData = [];
  late PageController _pageController;

  @override
  void initState() {
    initIntroData();
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnBoardInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isFirstTime', false);
  }

  bool isLastPage() {
    return currentPage == splashData.length - 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Image.asset(Assets.images.introTop.path),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 144,
              ),
              Expanded(
                flex: 2,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => IntroContent(
                    text: splashData[currentPage].content,
                    image: splashData[currentPage].image,
                    heading: splashData[currentPage].header,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const SizedBox(
                      height: 72,
                    ),
                    currentPage == 0
                        ? const SizedBox()
                        : Row(
                            children: [
                              currentPage == splashData.length - 1
                                  ? const SizedBox()
                                  : Expanded(
                                      child: BtnDefault(
                                        level: BtnDefaultLevel.secondary,
                                        title: "Skip",
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            currentPage++;
                                          });
                                        },
                                      ),
                                    ),
                              Expanded(
                                child: BtnDefault(
                                  title: splashData[currentPage]
                                      .buttonTitle, // Dynamically set the button text
                                  decoration: BoxDecoration(
                                    color: AppColorScheme.light.secondary,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  onTap: () {
                                    if (currentPage < splashData.length - 1) {
                                      setState(() {
                                        currentPage++; // Tăng currentPage để chuyển đến trang intro tiếp theo
                                      });
                                    } else {
                                      _storeOnBoardInfo();
                                      Navigator.pushNamed(
                                          context, NavBar.routeName,
                                          arguments:
                                              ""); // Nếu đã ở trang cuối cùng, chuyển đến trang đăng nhập
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  void initIntroData() async {
    IntroData intro1 = IntroData(
        header: "Search Your Job",
        content:
            "Figure out your top five priorities whether it is company culture, salary.",
        buttonTitle: "Next",
        image: Assets.images.onBoarding1.path);

    IntroData intro2 = IntroData(
        header: "Browser Job List",
        content:
            "Our job list include several  industries, so you can find the best job for you.",
        buttonTitle: "Next",
        image: Assets.images.onBoarding2.path);

    IntroData intro3 = IntroData(
        header: "Apply To Best Job",
        content:
            "You can apply to your desirable jobs very quickly and easily with ease.",
        buttonTitle: "Next",
        image: Assets.images.onBoarding3.path);

    IntroData intro4 = IntroData(
        header: "Make your career",
        content:
            "We help you find your dream job based on your skillset, location, demand.",
        buttonTitle: "Explore",
        image: Assets.images.onBoarding3.path);

    splashData.add(intro1);
    splashData.add(intro2);
    splashData.add(intro3);
    splashData.add(intro4);
  }

  AnimatedContainer buildDot({int index = 0}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      height: 6,
      width: currentPage == index ? 20 : 6,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: currentPage == index
            ? AppColorScheme.light.secondary
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
