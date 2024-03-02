// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:jobhub_ute/app/feature/cv_profile/presentaion/pages/cv_page.dart';
import 'package:jobhub_ute/app/feature/more/persentation/widgets/rating_bar.dart';

import 'package:jobhub_ute/app/feature/settings/presentation/page/setting_page.dart';
import 'package:jobhub_ute/common/text_theme.dart';
import 'package:jobhub_ute/common/widgets/app_bar.dart';

import '../../../../../common/color_extension.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../auth/presentation/cubit/auth_cubit.dart';
import '../../../change_address/presentation/page/address_page.dart';
import '../../../multiple_language/presentation/pages/multiple_language_page.dart';
import '../../../notification/presentation/pages/notification_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import '../../domain/entities/item_more_entities.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  final listCV = [
    {"index": "0", "name": "CV của bạn", "base": 0},
    {"index": "1", "name": "Ngôn ngữ", "base": 0},
    {"index": "2", "name": "Thông báo", "base": 15},
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Text(
                    //   "Edit",
                    //   style: TextStyle(
                    //       color: AppColorScheme.kPrimary,
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w600),
                    // ),
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SettingsPage.routeName);
                        },
                        icon: Icon(
                          Icons.settings,
                          color: AppColorScheme.kPrimary,
                          size: 25,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          fit: BoxFit.cover,
                          Assets.images.hinhnen.path,
                          width: 104,
                          height: 104,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Nguyễn Hoàng Toàn",
                          style: TextStyle(
                              color: AppColorScheme.inkDark,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          AppLocalizations.of(context)!.notverified,
                          style: TextStyle(
                              color: AppColorScheme.kPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "27",
                              style: tStyle.PrL(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Applied",
                                style: tStyle.PrM(
                                    color: AppColorScheme.inkDarkGray)),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "14",
                              style: tStyle.PrL(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Interview",
                                style: tStyle.PrM(
                                    color: AppColorScheme.inkDarkGray)),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "22",
                              style: tStyle.PrL(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Reviewed",
                                style: tStyle.PrM(
                                    color: AppColorScheme.inkDarkGray)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColorScheme.inkGray.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1),
                      )
                    ],
                    color: AppColorScheme.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  StaticRatingBar(rating: 2),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Gây ấn tượng hơn cho nhà tuyển dụng bằng cách hoàn thiện hồ sơ của bạn!",
                    style: tStyle.PrM(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColorScheme.inkWhite,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColorScheme
                            .kPrimary, // Set border color to transparent
                      ),
                    ),
                    child: Text("Hoàn thiện hồ sơ",
                        textAlign: TextAlign.center,
                        style: tStyle.PrM(
                            color: AppColorScheme.kPrimary,
                            fontWeight: FontWeight.bold)),
                  )
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColorScheme.inkGray.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            )
                          ],
                          color: AppColorScheme.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          ItemTabMore(
                            image: Assets.images.docs.path,
                            title: "Hồ sơ Jobhub",
                            routeName: ResumePage.routeName,
                          ),
                          const Divider(
                            color: AppColorScheme.inkGray,
                          ),
                          ItemTabMore(
                            image: Assets.images.uploadFile.path,
                            title: "CV",
                            routeName: ResumePage.routeName,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemTabMore extends StatelessWidget {
  const ItemTabMore({
    Key? key,
    required this.title,
    required this.image,
    required this.routeName,
  }) : super(key: key);

  final String title;
  final String image;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(image, width: 25, height: 25),
                    const SizedBox(
                      width: 15,
                    ),
                    Text("$title",
                        style: TextStyle(
                          color: AppColorScheme.inkDarkGray,
                          fontSize: 14,
                        )),
                  ],
                ),
                Image.asset(
                  Assets.images.next.path,
                  width: 15,
                  height: 15,
                  color: AppColorScheme.inkDarkGray,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
