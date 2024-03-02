import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jobhub_ute/app/feature/job_detail/presentaion/pages/job_detail_body.dart';
import 'package:jobhub_ute/common/btn/btn_default.dart';
import 'package:jobhub_ute/common/color_extension.dart';
import 'package:jobhub_ute/common/input/input_default.dart';
import 'package:jobhub_ute/common/text_theme.dart';
import 'package:jobhub_ute/gen/assets.gen.dart';
import '../../../../../common/widgets/category_cell.dart';
import '../../../../../common/widgets/recent_item_row.dart';
import '../../../job_detail/presentaion/pages/job_detail_page.dart';
import '../widgets/view_all_title_row.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List catArr = [
    {"image": Assets.images.cat3.path, "name": "Offers"},
    {"image": Assets.images.cat3.path, "name": "Sri Lankan"},
    {"image": Assets.images.cat3.path, "name": "Italian"},
    {"image": Assets.images.cat3.path, "name": "Indian"},
    {"image": Assets.images.cat3.path, "name": "Indian"},
    {"image": Assets.images.cat3.path, "name": "Indian"},
    {"image": Assets.images.cat3.path, "name": "Indian"},
    {"image": Assets.images.cat3.path, "name": "Indian"},
    {"image": Assets.images.cat3.path, "name": "Indian"},
  ];

  List recentArr = [
    {
      "image": Assets.images.item1.path,
      "name": "UX Designer",
      "rate": "4.9",
      "rating": "124",
      "type": "Dribbble",
      "food_type": ""
    },
    {
      "image": Assets.images.item1.path,
      "name": "Product Manager",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": Assets.images.item1.path,
      "name": "Sr Engineer",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: [
              Header(),
              SizedBox(
                height: 32,
              ),
              SearchBar(),
              SizedBox(
                height: 16,
              ),
              ViewAllTitleRow(
                title: "Job Categories",
                onView: () {},
              ),
              CategoriesBar(catArr: catArr),
              ViewAllTitleRow(
                title: "Featured Jobs",
                onView: () {},
              ),
              Column(
                children: [
                  CarouselSlider(
                    items: [
                      FeaturedBar(),
                      FeaturedBar(),
                      FeaturedBar(),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 1,
                      aspectRatio: 2.1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
              ViewAllTitleRow(
                title: "Popular Jobs",
                onView: () {},
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 0),
                itemCount: recentArr.length,
                itemBuilder: ((context, index) {
                  var rObj = recentArr[index] as Map? ?? {};
                  return RecentItemRow(
                    rObj: rObj,
                    onTap: () {
                      Navigator.pushNamed(context, JobDetailPage.routeName);
                    },
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturedBar extends StatelessWidget {
  const FeaturedBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorScheme.kPrimary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColorScheme.inkWhite,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(Assets.images.group.path),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Senior Product Designer",
                          style: tStyle.PrM(
                            fontWeight: FontWeight.bold,
                            color: AppColorScheme.inkWhite,
                          ),
                        ),
                        Text(
                          "Google",
                          style: tStyle.PrM(
                            color: AppColorScheme.inkWhite,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(Assets.images.unsave.path),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: AppColorScheme.inkWhite,
                    borderRadius: BorderRadius.circular(65),
                  ),
                  child: Text("IT"),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: AppColorScheme.inkWhite,
                    borderRadius: BorderRadius.circular(65),
                  ),
                  child: Text("Full-Time"),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: AppColorScheme.inkWhite,
                    borderRadius: BorderRadius.circular(65),
                  ),
                  child: Text("Junior"),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("99.99Đ/year",
                    style: tStyle.PrM(color: AppColorScheme.inkWhite)),
                Text("Texas,USA",
                    style: tStyle.PrM(color: AppColorScheme.inkWhite)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({
    Key? key,
    required this.catArr,
  }) : super(key: key);

  final List catArr;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catArr.length,
        itemBuilder: ((context, index) {
          var cObj = catArr[index] as Map? ?? {};
          return CategoryCell(
            cObj: cObj,
            onTap: () {},
          );
        }),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColorScheme.inkLightGray,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 14, right: 14, bottom: 14, left: 24),
                  child: Image.asset(Assets.images.search11.path),
                ),
                Text("Search a job or position",
                    style: tStyle.PrM(color: AppColorScheme.inkDarkGray)),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: AppColorScheme.inkLightGray,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(Assets.images.filter5.path))
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 72,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: tStyle.PrM(
                    color: AppColorScheme.inkDarkGray,
                  ),
                ),
                Text(
                  "Nguyen Hoang Toan",
                  style: tStyle.H4(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Image.asset(Assets.images.ellipse.path)
          ],
        ),
      ],
    );
  }
}

class TCircularContainer extends StatelessWidget {
  const TCircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.margin = 0,
      this.child,
      this.color = AppColorScheme.inkWhite,
      this.padding = 0});
  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final double? margin;
  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(right: margin ?? 0),
      padding: EdgeInsets.all(padding ?? 0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius ?? 0),
      ),
      child: child,
    );
  }
}
