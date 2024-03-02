import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobhub_ute/app/feature/cv_profile/presentaion/pages/cv_page.dart';
import 'package:jobhub_ute/app/feature/network/presentation/page/network_page.dart';
import '../../../../../common/btn/tab_button.dart';
import 'package:badges/badges.dart' as badges;

import '../../../../../common/color_extension.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../more/persentation/pages/more_page.dart';
import '../../../notification/presentation/pages/notification_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'home_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  static const routeName = "/navBar";

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with WidgetsBindingObserver {
  int tab = 2;
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget selectPageView = const HomePage();

  int item = 1;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFff5f5f5),
      body: PageStorage(
        bucket: pageStorageBucket,
        child: selectPageView,
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColorScheme.white,
        elevation: 1,
        notchMargin: 12,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: SizedBox(
            height: 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TabButton(
                    title: AppLocalizations.of(context)!.homeTab,
                    icon: Assets.images.tabMenu.path,
                    onTap: () {
                      if (tab != 2) {
                        tab = 2;
                        selectPageView = const HomePage();
                      }
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isSelected: tab == 2),
                TabButton(
                    title: AppLocalizations.of(context)!.job,
                    icon: Assets.images.search.path,
                    onTap: () {
                      if (tab != 0) {
                        tab = 0;
                        selectPageView = const ResumePage();
                      }
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isSelected: tab == 0),
                TabButton(
                    title: AppLocalizations.of(context)!.network,
                    icon: Assets.images.tabOffer.path,
                    onTap: () {
                      if (tab != 1) {
                        tab = 1;
                        selectPageView = const NetworkPage();
                      }
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isSelected: tab == 1),
                TabButton(
                    title: AppLocalizations.of(context)!.notificationTab,
                    icon: Assets.images.moreNotification.path,
                    onTap: () {
                      if (tab != 3) {
                        tab = 3;
                        selectPageView = const NotificationPage();
                      }
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isSelected: tab == 3),
                TabButton(
                    title: AppLocalizations.of(context)!.account,
                    icon: Assets.images.tabMore.path,
                    onTap: () {
                      if (tab != 4) {
                        tab = 4;
                        selectPageView = const MorePage();
                      }
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isSelected: tab == 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
