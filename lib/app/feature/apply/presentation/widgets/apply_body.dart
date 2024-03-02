import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jobhub_ute/common/btn/btn_default.dart';
import 'package:jobhub_ute/common/color_extension.dart';
import 'package:jobhub_ute/common/input/input_default.dart';
import 'package:jobhub_ute/common/text_theme.dart';

import 'package:jobhub_ute/gen/assets.gen.dart';

import '../../../../../common/widgets/upload_cv.dart';

class ApplyBody extends StatefulWidget {
  const ApplyBody({super.key});

  @override
  State<ApplyBody> createState() => _ApplyBodyState();
}

class _ApplyBodyState extends State<ApplyBody> {
  List paymentArr = [
    {"name": "CV Ứng tuyển gần nhất", "icon": Assets.images.cash.path},
    {"name": "CV từ thư viện của tôi", "icon": Assets.images.visaIcon.path},
    {"name": "Tải CV lên từ điện thoại", "icon": Assets.images.paypal.path},
  ];

  List listProfile = [
    {"name": "Họ và Tên:", "result": "Nguyễn Hoàng Toàn"},
    {"name": "Email:", "result": "toannguyen7202@gmail.com"},
    {"name": "Số điện thoại:", "result": "0974734350"},
  ];

  int selectMethod = 0;
  int selectedProfileIndex = 0; // Mặc định không có ô nào được chọn
  String text = "CV_NGUYENHOANGTOAN_0974734350.pdf";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text(
          "Apply",
          style: TextStyle(
              color: AppColorScheme.inkDark, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: AppColorScheme.inkWhite,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: AppColorScheme.inkWhite,
            borderRadius: BorderRadius.circular(14)),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderApplyBar(),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select a profile",
                            style: tStyle.H5(fontWeight: FontWeight.bold),
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: paymentArr.length,
                            itemBuilder: (context, index) {
                              var pObj = paymentArr[index] as Map? ?? {};
                              bool isSelected = selectMethod == index;

                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal: 15.0,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColorScheme.inkWhite,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: AppColorScheme.secondaryText
                                        .withOpacity(0.2),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectMethod = index;
                                        });
                                      },
                                      child: Icon(
                                        isSelected
                                            ? Icons.radio_button_on
                                            : Icons.radio_button_off,
                                        color: AppColorScheme.kPrimary,
                                        size: 15,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            pObj["name"],
                                            style: TextStyle(
                                              color: AppColorScheme.primaryText,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          if (isSelected)
                                            index == 2
                                                ? UploadCV()
                                                : index == 1
                                                    ? CVLib(text: text)
                                                    : index == 0
                                                        ? RecentProfille(
                                                            listProfile:
                                                                listProfile)
                                                        : SizedBox(), // Add additional conditions if needed

                                          //UploadCV()

                                          //CVLib(text: text)
                                          //RecentProfille(listProfile: listProfile),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          Text("Thư giới thiệu",
                              style: tStyle.PrL(fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 8,
                          ),
                          InputDefault(
                            decoration: InputDecoration(
                              hintText:
                                  "Viết thư giới thiệu ngắn gọn về bản thân (điểm mạnh, điểm yếu, ...)",
                              hintStyle: tStyle.PrSS(
                                  color: AppColorScheme.inkDarkGray),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Colors.black),
                              ),
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 100,
                padding: const EdgeInsets.all(24),
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
                        "Apply",
                        textAlign: TextAlign.center,
                        style: tStyle.PrM(color: AppColorScheme.inkWhite),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CVLib extends StatelessWidget {
  const CVLib({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: AppColorScheme.kPrimary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          text.length > 20 ? text.substring(0, 20) + '...' : text,
        ),
        Image.asset(
          Assets.images.arrowDown3101.path,
          color: AppColorScheme.inkDarkGray,
          width: 16,
          height: 16,
        )
      ]),
    );
  }
}

class RecentProfille extends StatelessWidget {
  const RecentProfille({
    Key? key,
    required this.listProfile,
  }) : super(key: key);

  final List listProfile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Thời gian ứng tuyển gần nhất 22/02/2024",
          style: TextStyle(
            color: AppColorScheme.inkDarkGray,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: AppColorScheme.kPrimary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "JAVA_NGUYENHOANGTOAN",
                    style: TextStyle(
                      color: AppColorScheme.kPrimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Xem CV",
                    style: TextStyle(
                      color: AppColorScheme.kPrimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  var pObj = listProfile[index] as Map? ?? {};
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          children: [
                            Text(
                              pObj["name"],
                              style: TextStyle(
                                color: AppColorScheme.inkDarkGray,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              pObj["result"],
                              style: TextStyle(
                                color: AppColorScheme.inkDarkGray,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
                itemCount: listProfile.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              )
            ],
          ),
        )
      ],
    );
  }
}

class HeaderApplyBar extends StatelessWidget {
  const HeaderApplyBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 44, bottom: 20, right: 44, top: 24),
      color: AppColorScheme.inkWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Assets.images.logocompany.path,
                  width: 44, height: 44),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "UX Intern",
                    style: TextStyle(
                        color: AppColorScheme.inkDark,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Facebook",
                    style: TextStyle(
                        color: AppColorScheme.inkDarkGray,
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "\$88.000/year",
                style: tStyle.PrM(fontWeight: FontWeight.bold),
              ),
              Text(
                "Los Angeles, US",
                style: tStyle.PrM(
                  color: AppColorScheme.inkDarkGray,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
