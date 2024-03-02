import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jobhub_ute/app/feature/apply/presentation/page/apply_page.dart';
import 'package:jobhub_ute/app/feature/job_detail/data/model/des_status.dart';
import 'package:jobhub_ute/app/feature/job_detail/presentaion/widgets/job_des_tab.dart';
import 'package:jobhub_ute/common/btn/btn_default.dart';
import 'package:jobhub_ute/common/color_extension.dart';
import 'package:jobhub_ute/common/text_theme.dart';
import 'package:jobhub_ute/gen/assets.gen.dart';

import '../widgets/app_tab_bar.dart';
import '../widgets/tab_bar_wrapper.dart';

class JobDetailBody extends StatefulWidget {
  const JobDetailBody({super.key});

  @override
  State<JobDetailBody> createState() => _JobDetailBodyState();
}

class _JobDetailBodyState extends State<JobDetailBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColorScheme.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              Assets.images.btnBack.path,
              width: 24,
              height: 24,
            ),
          ),
          actions: [
            Image.asset(Assets.images.unsavegray.path),
          ],
          title: Text(
            "Details",
            style: tStyle.H4(),
          )),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: const [
                      HeaderJobBar(),
                      BodyJobBar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ApplyPage.routeName);
                    },
                    child: Container(
                      height: 75,
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: AppColorScheme.kPrimary,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "Apply Now",
                              textAlign: TextAlign.center,
                              style: tStyle.PrM(color: AppColorScheme.inkWhite),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  // BtnDefault(
                  //   title: "Apply Now",
                  //   decoration: BoxDecoration(
                  //     backgroundBlendMode: BlendMode.darken,
                  //     color: AppColorScheme.kPrimary,
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   onTap: () {
                  //     Navigator.pushNamed(context, ApplyPage.routeName);
                  //   },
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BodyJobBar extends StatelessWidget {
  const BodyJobBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: DescriptionJobStatus.values.length,
      child: Column(
        children: [
          TabBarWrapperUnderLine(
            child: AppTabBar(
              onTap: (index) {},
              padding: const EdgeInsets.symmetric(horizontal: 0),
              tabs: DescriptionJobStatus.values.toList().asMap().entries.map(
                (entry) {
                  final index = entry.key;
                  final item = entry.value;
                  return Tab(
                      child: Text(
                    item.displayValue,
                  ));
                },
              ).toList(),
              isScrollable: true,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            height: 330,
            child: TabBarView(
              children: DescriptionJobStatus.values
                  .map<Widget>(
                      (desciption) => JobDesTab(status: desciption.name))
                  .toList(), // Convert the Iterable<Widget> to List<Widget>
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderJobBar extends StatelessWidget {
  const HeaderJobBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          height: 260,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Image.asset(Assets.images.logocompany.path),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Text(
                    "Software Engineer",
                    style: tStyle.H4(),
                  ),
                  Text(
                    "Facebook",
                    style: tStyle.PrM(
                      color: AppColorScheme.inkDarkGray,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: AppColorScheme.inkGray,
                      borderRadius: BorderRadius.circular(65),
                    ),
                    child: Text("Design",
                        style: tStyle.PrSS(color: AppColorScheme.inkDark)),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: AppColorScheme.inkGray,
                      borderRadius: BorderRadius.circular(65),
                    ),
                    child: Text("Full-Time",
                        style: tStyle.PrSS(color: AppColorScheme.inkDark)),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: AppColorScheme.inkGray,
                      borderRadius: BorderRadius.circular(65),
                    ),
                    child: Text("Junior",
                        style: tStyle.PrSS(color: AppColorScheme.inkDark)),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "188,00USD/year",
                    style: tStyle.PrL(fontWeight: FontWeight.bold),
                  ),
                  Text("Seattle, USA",
                      style: tStyle.PrL(fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
