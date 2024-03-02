import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jobhub_ute/common/color_extension.dart';
import 'package:jobhub_ute/common/text_theme.dart';
import 'package:jobhub_ute/gen/assets.gen.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'Custom_Buttons.dart';
import 'custom_appBar.dart';
import 'data.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});

  static const routeName = "/network";

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  final _post = Data.postList;
  bool _showAppNavBar = true;
  late ScrollController _scrollController;
  bool _isScrollDown = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _initialScroll();
  }

  void _hideAppNavBar() {
    setState(() {
      _showAppNavBar = false;
    });
  }

  void _showAppNvBar() {
    setState(() {
      _showAppNavBar = true;
    });
  }

  void _initialScroll() async {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_isScrollDown) {
          _isScrollDown = true;
          _hideAppNavBar();
        }
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_isScrollDown) {
          _isScrollDown = false;
          _showAppNvBar();
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ResponsiveBuilder(
          builder: (BuildContext context, SizingInformation sizingInformation) {
        return Container(
          color: AppColorScheme.inkGray.withOpacity(0.02),
          child: Column(
            children: [
              _showAppNavBar
                  ? CustomAppBar(
                      sizingInformation: sizingInformation,
                    )
                  : Container(
                      height: 0.0,
                      width: 0.0,
                    ),
              _listPostWidget(sizingInformation),
            ],
          ),
        );
      }),
    );
  }

  Widget _listPostWidget(SizingInformation sizingInformation) {
    return Expanded(
        child: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _post.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            margin: EdgeInsets.only(bottom: 0.0, top: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // border: Border(
            //     top: BorderSide(color: Colors.black54, width: 0.50),
            //     bottom: BorderSide(color: Colors.black54, width: 0.50))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: AssetImage(
                            _post[index].profileUrl,
                          ))),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _post[index].name,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: sizingInformation.screenSize.width / 1.34,
                          child: Text(
                            _post[index].headline,
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  _post[index].description,
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  _post[index].tags,
                  style: TextStyle(color: AppColorScheme.kPrimary),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: sizingInformation.screenSize.width,
                  child: Image.asset(
                    _post[index].image,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color:
                                      AppColorScheme.kPrimary.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(80)),
                              width: 20,
                              height: 20,
                              child: Image.asset(Assets.images.likefb.path)),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(80)),
                              width: 20,
                              height: 20,
                              child: Image.asset(Assets.images.wow.path)),
                          if (index == 0 || index == 4 || index == 6)
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80)),
                                width: 20,
                                height: 20,
                                child: Image.asset(Assets.images.heart.path)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            _post[index].likes,
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColorScheme.inkDarkGray),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            _post[index].comments,
                            style: TextStyle(color: AppColorScheme.inkDarkGray),
                          ),
                          Text(
                            " comments",
                            style: TextStyle(color: AppColorScheme.inkDarkGray),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 0.50,
                  color: Colors.black26,
                ),
                _rowButton(),
              ],
            ),
          );
        },
      ),
    ));
  }

  Widget _rowButton() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: rowSingleButton(
                color: Colors.black,
                name: "Like",
                iconImage: Assets.images.like.path,
                isHover: false),
          ),
          InkWell(
            onTap: () {},
            child: rowSingleButton(
                color: Colors.black,
                name: "Comment",
                iconImage: Assets.images.chat.path,
                isHover: false),
          ),
          InkWell(
            onTap: () {},
            child: rowSingleButton(
                color: Colors.black,
                name: "Share",
                iconImage: Assets.images.send.path,
                isHover: false),
          ),
        ],
      ),
    );
  }
}
