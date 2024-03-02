import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jobhub_ute/common/btn/btn_default.dart';
import 'package:jobhub_ute/common/widgets/app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../common/color_extension.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../change_address/presentation/page/address_page.dart';
import '../../../more/domain/entities/item_more_entities.dart';
import '../../../multiple_language/presentation/pages/multiple_language_page.dart';
import '../../../notification/presentation/pages/notification_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  static const routeName = "/settings";

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<ItemsMore> loadData(BuildContext context) {
    List moreArr = [
      {
        "index": "0",
        "name": AppLocalizations.of(context)!.changeLanguage,
        "image": Assets.images.world.path,
        "base": 0
      },
      {
        "index": "3",
        "name": AppLocalizations.of(context)!.notifications,
        "image": Assets.images.moreNotification.path,
        "base": 15
      },
    ];
    return moreArr = moreArr.map((e) => ItemsMore.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: AppLocalizations.of(context)!.settings,
      ),
      body: Column(
        children: [
          ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: loadData(context).length,
            itemBuilder: ((context, index) {
              List<ItemsMore> moreArr = loadData(context);
              ItemsMore itemsMore = moreArr[index];
              var countBase = itemsMore.base;
              return GestureDetector(
                  onTap: () {
                    switch (itemsMore.index) {
                      case "-1":
                        Navigator.of(context).pushNamed(ProfilePage.routeName);
                        break;
                      case "0":
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MultiplePage()));
                        break;
                      // case "1":
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const PaymentPage()));
                      //   break;
                      // case "2":
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const OrderPage()));
                      //   break;
                      case "3":
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationPage()));
                        break;
                      case "5":
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddressPage()));
                        break;

                      default:
                    }
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            color: AppColorScheme.inkWhite,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: AppColorScheme.kPrimary,
                                    borderRadius: BorderRadius.circular(25)),
                                alignment: Alignment.center,
                                child: Image.asset(itemsMore.image,
                                    color: AppColorScheme.inkWhite,
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.contain),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  itemsMore.name,
                                  style: TextStyle(
                                      color: AppColorScheme.primaryText,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              if (countBase > 0)
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.circular(12.5)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    countBase > 99
                                        ? "99"
                                        : countBase.toString(),
                                    style: TextStyle(
                                        color: AppColorScheme.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: AppColorScheme.inkWhite,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Image.asset(Assets.images.btnNext.path,
                                    width: 10,
                                    height: 10,
                                    color: AppColorScheme.kPrimary),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ));
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.red,
                ),
              ),
              child: Text(AppLocalizations.of(context)!.logout,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w600)),
            ),
          )
        ],
      ),
    );
  }
}
