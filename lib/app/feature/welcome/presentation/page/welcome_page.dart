import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jobhub_ute/common/text_theme.dart';
import '../../../../../common/btn/btn_default.dart';
import '../../../../../common/color_extension.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../login/presentation/page/login_page.dart';
import '../../../sign_up/presentation/pages/sign_up_page.dart';

class WelComePage extends StatelessWidget {
  const WelComePage({super.key});

  static const routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: media.width * 0.2,
                ),
                Text(
                  "HCMUTE",
                  style: TextStyle(
                      color: AppColorScheme.kPrimary,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: Assets.fonts.metropolisBold),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      Assets.images.logoNobg.path,
                      width: media.width * 0.45,
                      height: media.width * 0.63,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Text(
                  AppLocalizations.of(context)!.welcome,
                  textAlign: TextAlign.center,
                  style: tStyle.PrM(),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildImageWithBorder(Assets.images.apple.path),
                    const SizedBox(
                      width: 16,
                    ),
                    _buildImageWithBorder(Assets.images.gooleIcons.path),
                    const SizedBox(
                      width: 16,
                    ),
                    _buildImageWithBorder(Assets.images.signFace.path),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Container(
                      height: 1.0,
                      color: AppColorScheme.inkGray,
                      margin: const EdgeInsets.only(top: 7.0),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        color: AppColorScheme.white,
                        child: const Text(
                          "Hoặc",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        LoginPage.routeName,
                        (route) => false,
                      );
                    },
                    child: Text(
                      "ĐĂNG NHẬP BẰNG TÀI KHOẢN",
                      style: tStyle.PrM(
                          fontWeight: FontWeight.bold,
                          color: AppColorScheme.kPrimary),
                    )),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 32),
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Bằng việc tiếp tục, bạn đã đọc và đồng ý với\n ',
                      children: [
                        TextSpan(
                          text: 'Điều khoản dịch vụ',
                          style: TextStyle(
                            height: 1.5,
                            color: AppColorScheme.kPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Xử lý khi nhấp vào Điều khoản dịch vụ
                            },
                        ),
                        TextSpan(text: ' và '),
                        TextSpan(
                          text: 'Chính sách bảo mật',
                          style: TextStyle(
                            color: AppColorScheme.kPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Xử lý khi nhấp vào Chính sách bảo mật
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithBorder(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColorScheme.inkGray, // Màu của viền đen
          width: 1, // Độ rộng của viền
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
            width: 20,
            height: 20,
          ),
        ),
      ),
    );
  }
}
